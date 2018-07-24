//
//  FeedViewModel.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation

class FeedViewModel {

    private var feedItems = [FeedItem]()

    var numberOfFeedItems: Int {
        return feedItems.count
    }

    func loadFeed() {
        feedItems = FeedRepository.feed()
    }


    func itemAt(index: Int) -> FeedItem {
        return index < numberOfFeedItems ? feedItems[index] : FeedItem()
    }

}
