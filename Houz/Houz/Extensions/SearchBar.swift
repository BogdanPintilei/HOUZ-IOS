//
//  SearchBar.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/12/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

extension UISearchBar {
    
    var textField: UITextField? {
        return subviews.first?.subviews.first(where: { $0.isKind(of: UITextField.self) }) as? UITextField
    }
    
}
