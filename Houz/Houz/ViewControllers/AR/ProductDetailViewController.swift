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

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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
        let navVC = AppStoryboard.Main.instance.instantiateViewController(withIdentifier: "WebViewScreenStoryboardID") as! UINavigationController
        let vc = navVC.topViewController as! WebViewViewController
        vc.url = URL(string: "https://stackoverflow.com/questions/31301844/optional-default-parameter-in-swift?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa")
        navVC.hero.modalAnimationType = .zoom
        present(navVC, animated: true, completion: nil)
    }

    @IBAction func heartProduct(_ sender: Any) {
    }

    @IBAction func testProduct(_ sender: Any) {
        let vc = AppStoryboard.AR.instance.instantiateViewController(withIdentifier: "ARCameraViewControllerStoryboardID") as! ARCameraViewController
        vc.hero.modalAnimationType = .zoom
        vc.threeDimensionalObject = ThreeDimensionalObject(name: "OK", location: "ar.scnassets/cherub/cherub.scn")
        present(vc, animated: true, completion: nil)
    }

    private func customizeUI() {
    }

    private func setHeroElementsID() {
        self.productView.hero.id = heroID
        self.productTitleLabel.hero.id = productTitleLabelHeroID
    }

}
