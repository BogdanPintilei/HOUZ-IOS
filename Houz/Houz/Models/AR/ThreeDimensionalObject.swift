//
//  ThreeDimensionalObject.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/11/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ThreeDimensionalObject: NSObject {

    var name: String?
    var location: String?
    var image: UIImage?
    
    init(
        name: String? = "",
        location: String? = "",
        image: UIImage? = UIImage()
        ) {
        self.name = name
        self.location = location
        self.image = image
    }
    
}
