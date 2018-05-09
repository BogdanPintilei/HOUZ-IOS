//
//  ARSubcategoryTableViewCell.swift
//  Houz
//
//  Created by Bogdan on 09/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARSubcategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var arSubcategoryView: ARSubcategoryView!

    var subcategory: ARSubcategory! { didSet { arSubcategoryView.subcategory = subcategory } }

}
