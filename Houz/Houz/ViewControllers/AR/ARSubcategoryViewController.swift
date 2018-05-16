//
//  ARSubcategoryViewController.swift
//  Houz
//
//  Created by Bogdan on 09/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class ARSubcategoryViewController: UIViewController {

    var subcategories: [ARSubcategory]?
    var selectedSubcategory: ARSubcategory?

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }

    private func customizeUI() {
        self.setNavigationBarTransparent()
        self.navigationItem.largeTitleDisplayMode = .always
    }

}

extension ARSubcategoryViewController: UITableViewDelegate, UITableViewDataSource {

    // MARK: Table View Delegate & Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (subcategories?.count)!
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ARSubcategoryTableViewCellID", for: indexPath) as! ARSubcategoryTableViewCell
        cell.subcategory = subcategories![indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSubcategory = subcategories?[indexPath.row]
        performSegue(withIdentifier: .showProductListFromSubcategories)
    }

}

extension ARSubcategoryViewController: SegueHandler {

    enum SegueIdentifier: String {
        case showProductListFromSubcategories
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segueIdentifier(for: segue) {
        case .showProductListFromSubcategories:
            print("show products list from categories")
        }
    }

}
