//
//  LocalTestDataRepository.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation
import UIKit

class CategoryRepository {

    class func categories() -> [ARCategory] {

        let arCategories = [
            ARCategory(
                name: "Garden Mockup",
                subcategories: SubcategoryRepository.subcategories(),
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ),
            ARCategory(
                name: "Garden Mockup",
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ),
            ARCategory(
                name: "Garden Mockup",
                subcategories: SubcategoryRepository.subcategories(),
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ),
            ARCategory(
                name: "Garden Mockup",
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ),
            ARCategory(
                name: "Garden Mockup",
                subcategories: SubcategoryRepository.subcategories(),
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ), ARCategory(
                name: "Garden Mockup",
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ), ARCategory(
                name: "Garden Mockup",
                subcategories: SubcategoryRepository.subcategories(),
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            ), ARCategory(
                name: "Garden Mockup",
                imageURL: "imageURL",
                image: #imageLiteral(resourceName: "category_mockup_background")
            )
        ]

        return arCategories
    }

}

class SubcategoryRepository {

    class func subcategory() -> ARSubcategory {
        let subcategory = ARSubcategory(name: "subcategory mockup", imageURL: "imageURL", image: #imageLiteral(resourceName: "category_mockup_background"))

        return subcategory
    }

    class func subcategories() -> [ARSubcategory] {
        let subcategories = [
            ARSubcategory(name: "subcategory mockup", imageURL: "imageURL", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARSubcategory(name: "subcategory mockup", imageURL: "imageURL", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARSubcategory(name: "subcategory mockup", imageURL: "imageURL", image: #imageLiteral(resourceName: "category_mockup_background"))
        ]

        return subcategories
    }
}

class ProductRepository {

    class func products() -> [ARProduct] {
        let products = [
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
            ARProduct(name: "The Collest", productURL: "https://www.apple.com", imageURL: "imageURl", image: #imageLiteral(resourceName: "category_mockup_background")),
        ]

        return products
    }

}

class RanadomRepository {
    class func randomHOUZSESImages() -> [UIImage] {
        let houses = [#imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background"), #imageLiteral(resourceName: "category_mockup_background")]

        return houses
    }

    class func randomHOUZES() -> [Houz] {
        let houzes = [
            Houz(id: 1, name: "mine", profileImageURL: "not_yet", profileImage: #imageLiteral(resourceName: "category_mockup_background")),
            Houz(id: 2, name: "mine", profileImageURL: "not_yet", profileImage: #imageLiteral(resourceName: "category_mockup_background")),
            Houz(id: 3, name: "mine", profileImageURL: "not_yet", profileImage: #imageLiteral(resourceName: "category_mockup_background")),
            Houz(id: 4, name: "mine", profileImageURL: "not_yet", profileImage: #imageLiteral(resourceName: "category_mockup_background"))
        ]

        return houzes
    }
}

class FeedRepository {

    class func feed() -> [FeedItem] {
        let feed = [
            FeedItem(id: 1, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool houseThis is a cool houseThis is a cool houseThis is a cool houseThis is a cool houseThis is a cool house", likeCount: 132, imageURL: "https://s3.amazonaws.com/mindfullness/image5.jpg", videoURL: ""),
            FeedItem(id: 2, type: FeedItemType.video, title: "Video for you", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: "http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8"),
            FeedItem(id: 3, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: ""),
            FeedItem(id: 4, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: ""),
            FeedItem(id: 9, type: FeedItemType.product, title: "Cool House Product", itemDescription: "This is a cool house product", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: ""),
            FeedItem(id: 6, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://senaterace2012.com/wp-content/uploads/cool-house-pool-arq-pinterest_63660.jpg", videoURL: ""),
            FeedItem(id: 7, type: FeedItemType.video, title: "Cool Vid Brad", itemDescription: "This is a cool video for the house brah", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"),
            FeedItem(id: 8, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://dornob.com/wp-content/uploads/2009/07/bedroom-designs-modern.jpg", videoURL: ""),
            FeedItem(id: 9, type: FeedItemType.product, title: "Cool House Product", itemDescription: "This is a cool house product", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: ""),
            FeedItem(id: 10, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: ""),
            FeedItem(id: 11, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://senaterace2012.com/wp-content/uploads/cool-house-pool-arq-pinterest_63660.jpg", videoURL: ""),
            FeedItem(id: 12, type: FeedItemType.image, title: "Cool House", itemDescription: "This is a cool house", likeCount: 132, imageURL: "https://tamaramagel.com/wp-content/uploads/2016/05/20160121_TAMARAMAGEL_SCARSDALE-100-768x533.jpg", videoURL: "")
        ]

        return feed
    }

}
