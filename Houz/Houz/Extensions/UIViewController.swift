//
//  UIViewController.swift
//  Houz
//
//  Created by Bogdan on 06/05/2018.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit
import Toast_Swift

extension UIViewController {

    // MARK: Navigation controller helper methods

    func setNavigationBarTransparent() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }

    // MARK: SearchBar

    func addSearchBar(searchBar: UISearchBar, tintColor: UIColor, backgroundColor: UIColor, placeholder: String) {
        searchBar.showsCancelButton = false
        searchBar.placeholder = placeholder
        searchBar.tintColor = tintColor
        searchBar.returnKeyType = .done
        searchBar.textField?.backgroundColor = backgroundColor
        self.navigationItem.titleView = searchBar
    }

    // MARK: Alerts

    func showAlert(title: String? = nil, message: String? = nil, actions: [UIAlertAction], alertType: UIAlertControllerStyle? = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: alertType!)
        for action in actions {
            alertController.addAction(action)
        }
        alertController.view.tintColor = UIColor.black
        self.present(alertController, animated: true, completion: nil)
    }
    
    // MARK: Toast

    func showToast(withMessage message: String) {
        var style = ToastStyle()
        style.messageColor = .white
        style.titleFont = UIFont.systemFont(ofSize: 20, weight: .medium)
        style.backgroundColor = UIColor.AppColors.imageBackgroundImageTint
        self.view.makeToast(message, duration: 2.0, position: .bottom, style: style)
    }
    
}
