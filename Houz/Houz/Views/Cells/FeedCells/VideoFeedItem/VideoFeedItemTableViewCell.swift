//
//  VideoFeedItemTableViewCell.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/25/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Kingfisher

class VideoFeedItemTableViewCell: UITableViewCell, Reusable {

    @IBOutlet var profileNameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var feedItemImageView: UIImageView!

    static var nib: UINib? {
        return UINib(nibName: String(describing: VideoFeedItemTableViewCell.self), bundle: nil)
    }

    var feedItem: FeedItem! { didSet { configureViewWithFeedItem() } }

    override func prepareForReuse() {
        super.prepareForReuse()
        reuseCell()
    }

    private func configureViewWithFeedItem() {
        profileNameLabel.text = feedItem.title
        descriptionLabel.text = feedItem.itemDescription
        feedItemImageView.kf.indicatorType = .activity
        feedItemImageView.kf.setImage(with: URL(string: feedItem.imageURL!))
    }

    private func reuseCell() {
        self.imageView?.isHidden = false
        feedItem = FeedItem()
    }
    
}
