//
//  RandomHouzOverlayView.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/15/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Koloda

class RandomHouzOverlayView: OverlayView {

    override var overlayState: SwipeResultDirection? {
        didSet {
            switch overlayState {
            case .left?:
                self.backgroundColor = UIColor.AppColors.fadedRed
            case .right?:
                self.backgroundColor = UIColor.AppColors.fadedGreen
            default:
                break
            }
        }
    }
    
}
