//
//  CreateNavigator.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Gallery
import Hero

class CreateNavigator: NavigatorType {
    
    func create(screen: AppScreen) -> UIViewController? {
        switch screen {
        case .camera:
            let vc =  AppStoryboard.Create.instance.instantiateViewController(withIdentifier: screen.id) as! CameraViewController
            return vc
        default:
            return nil
        }
    }
    
}
