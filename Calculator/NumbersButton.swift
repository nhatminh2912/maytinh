//
//  NumbersButton.swift
//  Calculator
//
//  Created by Nhật Minh on 11/25/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class NumbersButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        numberButtonDesign()
    }
    
    func numberButtonDesign() -> Void
    {
        
        backgroundColor = UIColor.init(red: 177.0/255.0, green: 255.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        
        layer.cornerRadius = 10.0
        
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        self.setTitleColor(UIColor.blue, for: .normal)
        
    }
    
    
    
    
}
