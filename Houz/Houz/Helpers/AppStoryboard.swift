//
//  AppStoryboard.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/7/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    
    case Main, HOUZFeed, Random, Create, AR, Profile, Authenticathion
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
}

