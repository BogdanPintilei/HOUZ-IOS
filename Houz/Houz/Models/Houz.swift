//
//  HOUZ.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/14/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class Houz: NSObject {
    
    var id: Int?
    var name: String?
    var profileImageURL: String?
    var profileImage: UIImage?
    
    init(
        id: Int? = -1,
        name: String? = "",
        profileImageURL: String? = "",
        profileImage: UIImage?
    ) {
        self.id = id
        self.name = name
        self.profileImageURL = profileImageURL
        self.profileImage = profileImage
    }
    
}
