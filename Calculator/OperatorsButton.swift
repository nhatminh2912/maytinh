//
//  OperatorsButton.swift
//  Calculator
//
//  Created by Nhật Minh on 11/25/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class OperatorsButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configureButton()
        
    }
    
    func configureButton() -> Void
    {
        
        if tag == 101
        {
            backgroundColor = UIColor.init(red: 245.0/255.0, green: 165.0/255.0, blue: 34.0/255.0, alpha: 1.0)
        }
        else
        {
            backgroundColor = UIColor.init(red: 116.0/255.0, green: 219.0/255.0, blue: 110.0/255.0, alpha: 1.0)
        }
        
        layer.cornerRadius = 8.0
        
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        self.setTitleColor(UIColor.white, for: .normal)
    }
    
    
}
