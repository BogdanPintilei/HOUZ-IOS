//
//  FeedTableViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/19/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    let viewModel = FeedViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        customizeUI()
        initializeViewModel()
    }

    private func initializeViewModel() {
        viewModel.loadFeed()
    }

    private func customizeUI() {
        self.setNavigationBarTransparent()
    }

    private func registerCells() {
        tableView.registerReusableCell(ProductTableViewCell.self)
        tableView.registerReusableCell(ImageFeedItemTableViewCell.self)
    }
    
}

// MARK: Table View Delegate & DataSource

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfFeedItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.itemAt(index: indexPath.row)
        switch item.type! {
        case .image:
            let cell: ImageFeedItemTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
            cell.feedItem = item
            return cell
        case .product:
            let cell: ProductTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
            cell.product = item
            return cell
        case .video:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }

}
