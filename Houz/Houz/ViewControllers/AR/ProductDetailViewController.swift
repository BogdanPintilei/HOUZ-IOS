//
//  ProductDetailViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/6/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Hero

class ProductDetailViewController: UIViewController {

    @IBOutlet var productView: UIView!
    
    var heroID: String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.productView.hero.id = heroID
        print(heroID)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        self.hero.dismissViewController()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
