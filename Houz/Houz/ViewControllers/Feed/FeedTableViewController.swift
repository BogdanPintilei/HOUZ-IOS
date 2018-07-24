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
        customizeUI()
        initializeViewModel()
    }

    private func initializeViewModel() {
        viewModel.loadFeed()
    }
    
    private func customizeUI() {
        self.setNavigationBarTransparent()
    }

}

// MARK: Table View Delegate & DataSource

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfFeedItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ImageFeedItemTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.imageFeedItem = viewModel.itemAt(index: indexPath.row)
        return cell
    }

}
