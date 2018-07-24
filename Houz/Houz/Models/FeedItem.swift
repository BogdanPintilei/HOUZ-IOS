//
//  FeedItem.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

enum FeedItemType: String, Codable {
    case image
    case video
    case product
    case none
}

class FeedItem: Codable {

    var id: Int?
    var type: FeedItemType?
    var title: String?
    var itemDescription: String?
    var likeCount: Int?
    var productID: Int?
    var imageURL: String?
    var videoURL: String?

    init(
        id: Int? = 0,
        type: FeedItemType? = .none,
        title: String? = "",
        itemDescription: String? = "",
        likeCount: Int? = 0,
        productID: Int? = 0,
        imageURL: String? = "",
        videoURL: String? = ""
    ) {
        self.id = id
        self.type = type
        self.title = title
        self.itemDescription = itemDescription
        self.likeCount = likeCount
        self.productID = productID
        self.imageURL = imageURL
        self.videoURL = videoURL
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case type
        case itemDescription = "item_decsription"
        case likeCount = "like_count"
        case productID = "product_id"
        case imageURL = "image_URL"
        case videoURL = "video_URL"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        type = try container.decodeIfPresent(FeedItemType.self, forKey: .type)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        itemDescription = try container.decodeIfPresent(String.self, forKey: .itemDescription)
        likeCount = try container.decodeIfPresent(Int.self, forKey: .likeCount)
        productID =  try container.decodeIfPresent(Int.self, forKey: .productID)
        imageURL = try container.decodeIfPresent(String.self, forKey: .imageURL)
        videoURL = try container.decodeIfPresent(String.self, forKey: .videoURL)
    }
    
}
