//
//  RandomViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/14/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Koloda

class RandomViewController: UIViewController {


    @IBOutlet var kolodaView: KolodaView!
    @IBOutlet var skipButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    
    var houzes = [Houz]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()
        getHouzes()
    }

    @IBAction func skipCard(_ sender: Any) {
        kolodaView.swipe(.left)
    }

    @IBAction func likeCard(_ sender: Any) {
        kolodaView.swipe(.right)
    }

    private func setDelegates() {
        kolodaView.delegate = self
        kolodaView.dataSource = self
    }

    private func getHouzes() {
        LoadingView.startLoadingAnimation()
        houzes += RanadomRepository.randomHOUZES()
        kolodaView.reloadData()
        LoadingView.stopLoadingAnimation()
    }
    
    private func setDefaultTintForButtons() {
        skipButton.tintColor = .black
        likeButton.tintColor = .black
    }

}

// MARK: KolodaView Delegate

extension RandomViewController: KolodaViewDelegate {

    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        getHouzes()
    }
    
    func koloda(_ koloda: KolodaView, draggedCardWithPercentage finishPercentage: CGFloat, in direction: SwipeResultDirection) {
        switch direction {
        case .left:
            skipButton.tintColor = UIColor.AppColors.red
            likeButton.tintColor = .black
        case.right:
            likeButton.tintColor = UIColor.AppColors.green
            skipButton.tintColor = .black
        default:
            break
        }
    }
    
    func koloda(_ koloda: KolodaView, shouldSwipeCardAt index: Int, in direction: SwipeResultDirection) -> Bool {
        setDefaultTintForButtons()
        return true
    }

}

// MARK: KolodaView DataSource

extension RandomViewController: KolodaViewDataSource {

    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return houzes.count
    }

    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }

    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = RandomHouzView()
        view.houz = houzes[index]
        return view
    }

    func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
        return Bundle.main.loadNibNamed("RandomHouzOverlayView", owner: self, options: nil)?[0] as? OverlayView
    }

}
