//
//  ImageFeedItemView.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Kingfisher

class ImageFeedItemView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var feedimageView: UIImageView!
    @IBOutlet var titleSectionImage: UIImageView!
    
    var feedItem: FeedItem! { didSet { configureViewWithFeedItem() } }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib(nibName: "ImageFeedItemView", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
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
