//
//  CreateNavigator.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class CreateNavigator: NavigatorType {
    
    func create(screen: AppScreen) -> UIViewController? {
        switch screen {
        case .camera:
            let vc =  AppStoryboard.Create.instance.instantiateViewController(withIdentifier: screen.id) as! CameraViewController
            return vc
        case .post:
            let vc = AppStoryboard.Create.instance.instantiateViewController(withIdentifier: screen.id) as! PostViewController
            return vc
        default:
            return nil
        }
    }
    
}
