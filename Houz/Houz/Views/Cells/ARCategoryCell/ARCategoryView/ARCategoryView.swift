//
//  ARCategoryView.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARCategoryView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var tintForCategoryImageView: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var scrollToTopImageView: UIImageView!
    @IBOutlet weak var categoryView: UIView!

    var category: ARCategory! { didSet { customizeViewWithCategory() } }

    var isLast: Bool! { didSet { configureLastCell() } }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib(nibName: "ARCategoryView", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        customizeUI()
    }

    private func customizeViewWithCategory() {
        categoryNameLabel.text = category?.name
        categoryImageView.image = category?.image
        showAndHideItems(state: true)
    }

    private func customizeUI() {
        tintForCategoryImageView.backgroundColor = UIColor.AppColors.imageBackgroundImageTint
        scrollToTopImageView.tintColor = UIColor.black
    }

    private func configureLastCell() {
        showAndHideItems(state: false)
    }

    private func showAndHideItems(state: Bool) {
        categoryView.isHidden = !state
        scrollToTopImageView.isHidden = state
    }

}
