//
//  UIImageView.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/7/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
    
}
