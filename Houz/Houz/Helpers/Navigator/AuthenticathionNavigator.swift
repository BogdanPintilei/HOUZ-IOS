//
//  AuthenticathionNavigator.swift
//  Houz
//
//  Created by Bogdan Pintilei on 8/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class AuthenticathionNavigator: NavigatorType {
    
    func create(screen: AppScreen) -> UIViewController? {
        switch screen {
        case .login:
            let vc =  AppStoryboard.Authenticathion.instance.instantiateViewController(withIdentifier: screen.id) as! LoginViewController
            return vc
        default:
            return nil
        }
    }
    
}
