//
//  ARCategoryCollectionViewCell.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARCategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var arCategoryView: ARCategoryView!

    override func layoutIfNeeded() {
        super.layoutIfNeeded()
    }

    var category: ARCategory! { didSet { arCategoryView.category = category } }
    
    var isLast: Bool! { didSet { arCategoryView.isLast = isLast } }
    
}
