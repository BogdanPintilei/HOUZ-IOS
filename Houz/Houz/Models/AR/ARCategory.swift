//
//  ARCategory.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARCategory: NSObject {

    var name: String?
    var subcategories: [ARSubcategory]?
    var imageURL: String?
    var image: UIImage?

    init(
        name: String? = nil,
        subcategories: [ARSubcategory]? = nil,
        imageURL: String? = nil,
        image: UIImage? = nil
    ) {
        self.name = name
        self.subcategories = subcategories
        self.imageURL = imageURL
        self.image = image
    }
    
}
