//
//  LocalTestDataRepository.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation

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
