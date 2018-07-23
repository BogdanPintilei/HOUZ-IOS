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

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }

    private func customizeUI() {
        self.setNavigationBarTransparent()
    }

}

// MARK: Table View Delegate & DataSource

extension FeedViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ImageFeedItemTableViewCell = tableView.dequeueReusableCell(indexPath: indexPath)
//        let cell = tableView.dequeueReusableCell(withIdentifier: "boss", for: indexPath) as! ImageFeedItemTableViewCell
//        cell.imageFeedItem = FeedItem(id: 1, title: "ok", itemDescription: "ok", likeCount: 21, imageURL: "ok", videoURL: "ok")
        return cell
    }

}
