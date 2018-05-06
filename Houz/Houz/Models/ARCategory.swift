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
    var subcategory: ARSubcategory?
    var imageURL: String?
    var image: UIImage?

    init(
        name: String? = nil,
        subcategory: ARSubcategory? = nil,
        imageURL: String? = nil,
        image: UIImage? = nil
    ) {
        self.name = name
        self.subcategory = subcategory
        self.imageURL = imageURL
        self.image = image
    }
    
}
