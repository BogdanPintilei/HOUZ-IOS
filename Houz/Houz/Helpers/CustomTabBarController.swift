//
//  CustomTabBarController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Hero

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }


}

// MARK: TabBarControllerDelegate

extension CustomTabBarController: UITabBarControllerDelegate {

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.restorationIdentifier == "CreateStoryboardID" {
            CreateNavigator().present(screen: .camera, from: self)
            return false
        }

        return true
    }

}
