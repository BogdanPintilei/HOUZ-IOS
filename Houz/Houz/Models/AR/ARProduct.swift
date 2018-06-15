//
//  ARProduct.swift
//  Houz
//
//  Created by Bogdan on 15/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARProduct: NSObject {

    var name: String?
    var productURL: String?
    var imageURL: String?
    var image: UIImage?

    init(
        name: String? = nil,
        productURL: String? = nil,
        imageURL: String? = nil,
        image: UIImage? = nil
    ) {
        self.name = name
        self.productURL = productURL
        self.imageURL = imageURL
        self.image = image
    }
    
}
