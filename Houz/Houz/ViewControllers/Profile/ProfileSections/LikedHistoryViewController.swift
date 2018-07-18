//
//  LikedHistoryViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 7/18/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LikedHistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension LikedHistoryViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "LIKES")
    }
    
}
