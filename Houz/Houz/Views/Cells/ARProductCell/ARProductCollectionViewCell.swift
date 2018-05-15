//
//  ARProductCollectionViewCell.swift
//  Houz
//
//  Created by Bogdan on 15/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var arProductView: ARProductView!
    
    var arProduct: ARProduct! { didSet { arProductView.arProduct = arProduct } }
}
