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

    var arCategories: [ARCategory]!
    var cellNumber: Int!

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
        return arCategories.count + 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ARCategoryCollectionViewCellId", for: indexPath) as! ARCategoryCollectionViewCell
        if indexPath.row < arCategories.count {
            cell.category = arCategories[indexPath.row]
        } else {
            cell.isLast = true
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case arCategories.count :
            collectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
            print("select last cell")
        default:
            print("select cell")
        }
    }

}

extension BrowseARViewController: CHTCollectionViewDelegateWaterfallLayout {

    //MARK: - CollectionView Waterfall Layout Delegate Methods

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0:
            return CGSize(width: 100, height: 144)
        case arCategories.count:
            return arCategories.count % 2 == 0 ? CGSize(width: 100, height: 56) : CGSize(width: 100, height: 144)
        default:
            return CGSize(width: 100, height: 200)
        }
    }

}
