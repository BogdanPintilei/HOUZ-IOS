//
//  ProductTableViewCell.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/24/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Kingfisher

class ProductTableViewCell: UITableViewCell, Reusable {

    static var nib: UINib? {
        return UINib(nibName: String(describing: ProductTableViewCell.self), bundle: nil)
    }
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productTitleLabel: UILabel!
    @IBOutlet var productDescriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
    }

    var product: FeedItem! { didSet { configureCellWithProduct() } }

    private func customizeUI() {
        backgroundImageView.addBlurEffect(withStyle: .regular)
    }

    private func configureCellWithProduct() {
        productTitleLabel.text = product.title
        productDescriptionLabel.text = product.itemDescription
        backgroundImageView.kf.indicatorType = .activity
        backgroundImageView.kf.setImage(with: URL(string: product.imageURL!))
        productImageView.kf.indicatorType = .activity
        productImageView.kf.setImage(with: URL(string: product.imageURL!))
    }

}
