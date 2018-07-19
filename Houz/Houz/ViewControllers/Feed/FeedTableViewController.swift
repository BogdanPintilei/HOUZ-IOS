//
//  FeedTableViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    private func customizeUI() {
        self.setNavigationBarTransparent()
    }

}
