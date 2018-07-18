//
//  ProfileViewController.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/26/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ProfileViewController: ButtonBarPagerTabStripViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        self.customizeButtonBarViewUI()
        super.viewDidLoad()
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

        let galleryVC = AppStoryboard.Profile.instance.instantiateViewController(withIdentifier: StoryboardID.galleryVCID)
        let profilePostsVC = AppStoryboard.Profile.instance.instantiateViewController(withIdentifier: StoryboardID.profilePostsVC)
        let likedHistoryVC = AppStoryboard.Profile.instance.instantiateViewController(withIdentifier: StoryboardID.likedHistoryVC)

        return [galleryVC, profilePostsVC, likedHistoryVC]
    }

}
