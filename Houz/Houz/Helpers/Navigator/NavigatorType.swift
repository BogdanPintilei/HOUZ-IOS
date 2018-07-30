//
//  NavigatorType.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/30/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

// Each case describes an action of a screen
// Should be used when an button has different actions based on the flow context
enum NavigationAction {
    
}

protocol NavigatorType: class {
    
    func push(screen: AppScreen, from viewController: UIViewController)
    func present(screen: AppScreen, from viewController: UIViewController?)
    func doAction(_ action: NavigationAction, from viewController: UIViewController)
    func create(screen: AppScreen) -> UIViewController?
    
}


extension NavigatorType {
    
    // Provide default implementation in order to make this method optional
    func doAction(_ action: NavigationAction, from viewController: UIViewController) {}
    
    func push(screen: AppScreen, from viewController: UIViewController) {
        guard let newViewController = create(screen: screen) else { return }
        
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func present(screen: AppScreen, from viewController: UIViewController?) {
        guard let newViewController = create(screen: screen) else { return }
        
        viewController?.present(newViewController,
                                animated: true,
                                completion: nil)
    }
    
}
