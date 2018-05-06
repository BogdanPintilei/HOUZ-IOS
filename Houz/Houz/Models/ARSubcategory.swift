//
//  ARSubcategory.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARSubcategory: NSObject {

    var name: String?
    var imageURL: String?
    var image: UIImage?

    init(
        name: String? = nil,
        imageURL: String? = nil,
        image: UIImage? = nil
    ) {
        self.name = name
        self.imageURL = imageURL
        self.image = image
    }

}
