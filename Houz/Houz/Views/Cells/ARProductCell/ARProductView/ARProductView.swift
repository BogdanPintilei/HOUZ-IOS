//
//  ARProductView.swift
//  Houz
//
//  Created by Bogdan on 15/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARProductView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet var productTitleLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var arProduct: ARProduct! { didSet { configureViewWithARProduct() } }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        UINib(nibName: "ARProductView", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
    }

    private func configureViewWithARProduct() {
        productImageView.image = arProduct.image
    }

}
