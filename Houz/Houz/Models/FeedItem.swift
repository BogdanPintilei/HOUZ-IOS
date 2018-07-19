//
//  FeedItem.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class FeedItem: Codable {

    var id: Int?
    var title: String?
    var itemDescription: String?
    var likeCount: Int?
    var imageURL: String?
    var videoURL: String?

    init(
        id: Int? = 0,
        title: String? = "",
        itemDescription: String? = "",
        likeCount: Int? = 0,
        imageURL: String? = "",
        videoURL: String? = ""
    ) {
        self.id = id
        self.title = title
        self.itemDescription = itemDescription
        self.likeCount = likeCount
        self.imageURL = imageURL
        self.videoURL = videoURL
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case itemDescription = "item_decsription"
        case likeCount = "like_count"
        case imageURL = "image_URL"
        case videoURL = "video_URL"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: CodingKeys.id)
        title = try container.decodeIfPresent(String.self, forKey: CodingKeys.title)
        itemDescription = try container.decodeIfPresent(String.self, forKey: CodingKeys.itemDescription)
        likeCount = try container.decodeIfPresent(Int.self, forKey: CodingKeys.likeCount)
        imageURL = try container.decodeIfPresent(String.self, forKey: CodingKeys.imageURL)
        videoURL = try container.decodeIfPresent(String.self, forKey: CodingKeys.videoURL)
    }
    
}
