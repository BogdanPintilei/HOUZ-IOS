//
//  ARSubcategoryView.swift
//  Houz
//
//  Created by Bogdan on 09/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARSubcategoryView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet weak var subcategoryImageView: UIImageView!
    @IBOutlet weak var tintForSubcategoryImageView: UIImageView!

    @IBOutlet weak var subcategoryTitle: UILabel!

    var subcategory: ARSubcategory! { didSet { configureViewWithSubcategory() } }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib(nibName: "ARSubcategoryView", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        customizeUI()
    }

    private func customizeUI() {
        tintForSubcategoryImageView.backgroundColor = UIColor.AppColors.imageBackgroundImageTint
    }

    private func configureViewWithSubcategory() {
        subcategoryImageView.image = subcategory.image
    }

}
