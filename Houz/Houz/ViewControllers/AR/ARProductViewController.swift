//
//  ARProductViewController.swift
//  Houz
//
//  Created by Bogdan on 15/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Hero

class ARProductViewController: UIViewController {

    var products: [ARProduct]?
    var heroID: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getProducts()
        self.navigationItem.largeTitleDisplayMode = .always
    }

    private func getProducts() {
        products = ProductRepository.products()
    }
    
    private func cellHeroID(id: Int) -> String {
        return "cell\(id)"
    }
    
    private func cellLabelHeroID(id: Int) -> String {
        return "cell_label\(id)"
    }
}

extension ARProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // MARK: Collection View Delegate & Data Source

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (products?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2 - 4 , height: collectionView.frame.height/2.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AProductCollectionViewCellID", for: indexPath) as! ARProductCollectionViewCell
        cell.arProduct = products![indexPath.row]
        cell.arProductView.hero.id = cellHeroID(id: indexPath.row)
        cell.arProductView.productTitleLabel.hero.id = cellLabelHeroID(id: indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = AppStoryboard.AR.instance.instantiateViewController(withIdentifier: "ProfileDetailsStoryboardID") as! ProductDetailViewController
        vc.heroID = cellHeroID(id: indexPath.row)
        vc.productTitleLabelHeroID = cellLabelHeroID(id: indexPath.row)
        self.present(vc, animated: true, completion: nil)
    }

}
