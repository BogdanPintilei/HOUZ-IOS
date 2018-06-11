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
    @IBOutlet var productTitleLabel: UILabel!
    @IBOutlet var productImageView: UIImageView!
    
    var heroID: String? = ""
    var productTitleLabelHeroID: String? = ""
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setHeroElementsID()
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func buyProduct(_ sender: Any) {
    }
    
    @IBAction func heartProduct(_ sender: Any) {
    }
    
    @IBAction func testProduct(_ sender: Any) {
        let vc = AppStoryboard.AR.instance.instantiateViewController(withIdentifier: "ARCameraViewControllerStoryboardID")
        vc.hero.modalAnimationType = .zoom
        present(vc, animated: true, completion: nil)
    }
    
    private func customizeUI(){
    }
    
    private func setHeroElementsID() {
        self.productView.hero.id = heroID
        self.productTitleLabel.hero.id = productTitleLabelHeroID
    }
    
}
