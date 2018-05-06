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

    var category: ARCategory! { didSet { arCategoryView.category = category } }
    
}
