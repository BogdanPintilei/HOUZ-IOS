//
//  ImageFeedItemTableViewCell.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/25/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Kingfisher

class ImageFeedItemTableViewCell: UITableViewCell,Reusable {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var feedimageView: UIImageView!
    
    static var nib: UINib? {
        return UINib(nibName: String(describing: ImageFeedItemTableViewCell.self), bundle: nil)
    }
    
    var feedItem: FeedItem! { didSet { configureViewWithFeedItem() } }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func like(_ sender: Any) {
    }
    
    @IBAction func message(_ sender: Any) {
    }
    
    @IBAction func share(_ sender: Any) {
    }
    
    private func configureViewWithFeedItem() {
        titleLabel.text = feedItem.title
        descriptionLabel.text = feedItem.itemDescription
        feedimageView.kf.indicatorType = .activity
        feedimageView.kf.setImage(with: URL(string: feedItem.imageURL!))
    }
    
}
