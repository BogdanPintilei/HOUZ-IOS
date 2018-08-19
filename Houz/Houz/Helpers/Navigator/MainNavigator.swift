//
//  MainNavigator.swift
//  Houz
//
//  Created by Bogdan Pintilei on 8/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class MainNavigator: NavigatorType {
    
    func create(screen: AppScreen) -> UIViewController? {
        switch screen {
        case .main:
            let vc =  AppStoryboard.Main.instance.instantiateViewController(withIdentifier: screen.id) as! CustomTabBarController
            return vc
        default:
            return nil
        }
    }
    
}
