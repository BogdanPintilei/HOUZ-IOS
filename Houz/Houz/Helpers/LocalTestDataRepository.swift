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
