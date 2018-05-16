//
//  ARProductViewController.swift
//  Houz
//
//  Created by Bogdan on 15/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARProductViewController: UIViewController {

    var products: [ARProduct]?

    override func viewDidLoad() {
        super.viewDidLoad()
        getProducts()
        self.navigationItem.largeTitleDisplayMode = .always
    }

    private func getProducts() {
        products = ProductRepository.products()
    }
}

extension ARProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // MARK: Collection View Delegate & Data Source

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (products?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2 - 4 , height: collectionView.frame.height/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AProductCollectionViewCellID", for: indexPath) as! ARProductCollectionViewCell
        cell.arProduct = products![indexPath.row]
        return cell
    }

}
