//
//  SessionManager.swift
//  Houz
//
//  Created by Bogdan Pintilei on 8/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation

class SessionManager {
    
    class func isLoggedIn() -> Bool {
        return (self.deviceToken() != nil)
    }
    
    // MARK: - Keys
    
    private static let kDeviceToken = "device_token"
    private static let kDevicePNToken = "device_token_notifications"
    private static let kUserProfile = "user_profile"
    
    // MARK: - Device Token

    class func deviceToken() -> String? {
        return UserDefaults.standard.string(forKey: kDeviceToken)
    }
    
}
