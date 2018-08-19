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
    
    //Main
    case main
    
    // Authentication flow screens
    case login
    case resetPassword(emailAddress: String?)
    
    // Create
    case camera
    case post

    /// Storyboard Identifier
    var id: String {
        switch self {
        case .main:
            return "CustomTabBarControllerStoryboardID"
        case .login:
            return "LoginViewControllerStoryboardID"
        case .resetPassword(_):
            return "ResetPasswordViewController"
        case .camera:
            return "CameraViewControllerStoryboardID"
        case .post:
            return "PostViewControolerStoryboardID"
        }
    }
    
}
