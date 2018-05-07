//
//  UIView.swift
//  Houz
//
//  Created by Bogdan on 07/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setRoundFrame(){
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
}
