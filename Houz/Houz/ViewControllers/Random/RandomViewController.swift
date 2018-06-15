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
        customizeUI()
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
        houzes = RanadomRepository.randomHOUZES()
        kolodaView.reloadData()
    }

    private func customizeUI() {
    }
    
    private func setDefaultTintForButtons() {
        skipButton.tintColor = .black
        likeButton.tintColor = .black
    }

}

// MARK: KolodaView Delegate

extension RandomViewController: KolodaViewDelegate {

    func kolodaDidRunOutOfCards(_ koloda: KolodaView) {
        koloda.reloadData()
    }
    
    func koloda(_ koloda: KolodaView, draggedCardWithPercentage finishPercentage: CGFloat, in direction: SwipeResultDirection) {
        switch direction {
        case .left:
            skipButton.tintColor = UIColor(red: 0.90, green: 0, blue: 0, alpha: finishPercentage)
            likeButton.tintColor = .black
        case.right:
            likeButton.tintColor = UIColor(red: 0, green: 0.56, blue: 0, alpha: finishPercentage)
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
        print("number of houzes \(houzes.count)")
        return 1000
    }

    func kolodaSpeedThatCardShouldDrag(_ koloda: KolodaView) -> DragSpeed {
        return .default
    }

    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        let view = RandomHouzView()
        view.backgroundColor = .red
        return view
    }

    func koloda(_ koloda: KolodaView, viewForCardOverlayAt index: Int) -> OverlayView? {
        return Bundle.main.loadNibNamed("RandomHouzOverlayView", owner: self, options: nil)?[0] as? OverlayView
    }

}
