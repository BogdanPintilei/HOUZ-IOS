//
//  LoadingView.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/12/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import NVActivityIndicatorView
import UIKit

class LoadingView: UIView {
    
    static let indicatorView = NVActivityIndicatorView(frame: CGRect.zero, type: .circleStrokeSpin
        , color: .gray, padding: 20)
    
    static let win: UIWindow = UIApplication.shared.delegate!.window!!
    
    static func startLoadingAnimation() {
        indicatorView.center = win.center
        win.addSubview(indicatorView)
        indicatorView.startAnimating()
    }
    
    static func stopLoadingAnimation() {
        indicatorView.stopAnimating()
        indicatorView.removeFromSuperview()
    }
    
    static func setLoadingViewColor(color: UIColor) {
        indicatorView.color = color
    }
    
}
