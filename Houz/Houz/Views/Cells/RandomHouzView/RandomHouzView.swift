//
//  RandomHouzView.swift
//  Houz
//
//  Created by Bogdan Pintilei on 6/14/18.
//  Copyright © 2018 Bogdan. All rights reserved.
//

import UIKit

class RandomHouzView: UIView {

    @IBOutlet var view: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        UINib(nibName: "RandomHouzView", bundle: nil).instantiate(withOwner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
    }
    
}
