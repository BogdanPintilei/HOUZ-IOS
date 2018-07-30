//
//  AppScreen.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation

import UIKit

enum AppScreen {
    
    // Authentication flow screens
    case loginNav
    case login
    case resetPassword(emailAddress: String?)
    
    // Create
    case camera
    
    /// Storyboard Identifier
    var id: String {
        switch self {
        case .loginNav:
            return "LoginScreen"
        case .login:
            return "LoginViewController"
        case .resetPassword(_):
            return "ResetPasswordViewController"
        case .camera:
            return "CameraViewControllerStoryboardID"
        }
    }
    
}
