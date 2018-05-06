//
//  BrowseARViewController.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class BrowseARViewController: UIViewController {

    var first = true
    var arCategories: [ARCategory]?

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        getCategories()
        customizeUI()
    }

    private func customizeUI() {
        self.setNavigationBarTransparent()
        setUpCollectionView()
    }

    private func getCategories() {
        arCategories = CategoryRepository.categories()
    }

    private func setUpCollectionView() {
        let layout = CHTCollectionViewWaterfallLayout()
        layout.minimumColumnSpacing = 8.0
        layout.minimumInteritemSpacing = 8.0
        collectionView.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        collectionView.alwaysBounceVertical = true
        collectionView.collectionViewLayout = layout
    }

}

extension BrowseARViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    // MARK: CollectionView DataSource & Delegate

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (arCategories?.count)!
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ARCategoryCollectionViewCellId", for: indexPath) as! ARCategoryCollectionViewCell
        cell.category = arCategories![indexPath.row]
        return cell
    }

}

extension BrowseARViewController: CHTCollectionViewDelegateWaterfallLayout {

    //MARK: - CollectionView Waterfall Layout Delegate Methods

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        let cellSize = first ? CGSize(width: 100, height: 150) : CGSize(width: 100, height: 200)
        first = false
        return cellSize
    }
}
