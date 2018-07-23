//
//  ImageFeedItemTableViewCell.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ImageFeedItemTableViewCell: UITableViewCell, Reusable {

    @IBOutlet var imageFeedItemView: ImageFeedItemView!

    var imageFeedItem: FeedItem! { didSet { imageFeedItemView.feedItem = imageFeedItem } }

}
