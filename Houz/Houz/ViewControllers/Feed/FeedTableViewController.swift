//
//  FeedTableViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import AVFoundation
import MMPlayerView

class FeedViewController: UIViewController {

    lazy var videoPlayer: MMPlayerLayer = {
        let l = MMPlayerLayer()

        l.cacheType = .memory(count: 100)
        l.coverFitType = .fitToPlayerView
        l.videoGravity = AVLayerVideoGravity.resizeAspectFill
        l.replace(cover: PlayerView.instantiateFromNib())
        return l
    }()

    @IBOutlet var tableView: UITableView!

    let viewModel = FeedViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        customizeUI()
        initializeViewModel()
        initializePlayerView()
    }

    private func initializeViewModel() {
        viewModel.loadFeed()
    }
    
    private func initializePlayerView() {
        tableView.addObserver(self, forKeyPath: "contentOffset", options: [.new], context: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.updateByContentOffset()
            self.startLoading()
        }
    }

    private func customizeUI() {
        self.setNavigationBarTransparent()
    }

    private func registerCells() {
        tableView.registerReusableCell(ProductTableViewCell.self)
        tableView.registerReusableCell(ImageFeedItemTableViewCell.self)
        tableView.registerReusableCell(VideoFeedItemTableViewCell.self)
    }
    
}

// MARK: Table View Delegate & DataSource

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfFeedItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.itemAt(index: indexPath.row)
        switch item.type! {
        case .image:
            let cell: ImageFeedItemTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
            cell.feedItem = item
            return cell
        case .product:
            let cell: ProductTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
            cell.product = item
            return cell
        case .video:
            let cell: VideoFeedItemTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
            cell.feedItem = item
            return cell
        default:
            return UITableViewCell()
        }
    }

}

// MARK: Player Methods

extension FeedViewController {
    
    @objc fileprivate func startLoading() {
        if self.presentedViewController != nil {
            return
        }
        videoPlayer.startLoading()
    }
    
    fileprivate func updateByContentOffset() {
        let p = CGPoint(x: tableView.frame.width / 2, y: tableView.contentOffset.y + tableView.frame.width / 2)
        
        if let path = tableView.indexPathForRow(at: p),
            self.presentedViewController == nil {
            self.updateCell(at: path)
        }
    }
    
    fileprivate func updateCell(at indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? VideoFeedItemTableViewCell {
            // this thumb use when transition start and your video dosent start
            videoPlayer.thumbImageView.image = cell.feedItemImageView.image
            // set video where to play
            if !MMLandscapeWindow.shared.isKeyWindow {
                videoPlayer.playView = cell.feedItemImageView
            }
            
            // set url prepare to load
            videoPlayer.set(url: URL(string: cell.feedItem.videoURL!), state: { (status) in
                switch status {
                case .failed(let err):
                    let alert = UIAlertController(title: "err", message: err.description, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                case .ready:
                    print("Ready to Play")
                case .playing:
                    print("Playing")
                case .pause:
                    print("Pause")
                case .end:
                    print("End")
                default: break
                }
            })
            
        }
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "contentOffset" {
            self.updateByContentOffset()
            NSObject.cancelPreviousPerformRequests(withTarget: self)
            self.perform(#selector(startLoading), with: nil, afterDelay: 0.3)
            
        } else {
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
    
}
