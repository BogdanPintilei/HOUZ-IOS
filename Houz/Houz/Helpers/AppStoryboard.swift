//
//  AppStoryboard.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/7/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    
    case Main, HOUZFeed, Random, Create, AR, Profile
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
}

struct StoryboardID {
    
    static var galleryVCID: String {
        return "GalleryViewControllerStoryboardID"
    }
    
    static var profilePostsVC: String {
        return "ProfilePostsViewControllerStoryboardID"
    }
    
    static var likedHistoryVC: String {
        return "LikedHistoryViewControllerStoryboardID"
    }
    
}
