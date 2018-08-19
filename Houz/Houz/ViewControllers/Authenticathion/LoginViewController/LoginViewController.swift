//
//  LoginViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 8/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    @IBAction func login(_ sender: Any) {
        MainNavigator().present(screen: .main, from: self)
    }
    
    @IBAction func register(_ sender: Any) {
    }

}
