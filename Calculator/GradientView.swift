//
//  GradientView.swift
//  Calculator
//
//  Created by Nhật Minh on 11/25/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class GradientView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if tag == 110
        {
            backgroundColor = UIColor.init(red: 49.0/255.0, green: 58.0/255.0, blue: 75.0/255.0, alpha: 1.0)
        }
        else
        {
            createGradient()
        }
    }
    
    
    
    func createGradient() -> Void
    {
        let bgGradient = CAGradientLayer()
        
        bgGradient.frame = self.frame
        
        bgGradient.colors = [UIColor.init(red: 57.0/255.0, green: 120.0/255.0, blue: 127.0/255.0, alpha: 1.0),
                            UIColor.init(red: 77.0/255.0, green: 188.0/255.0, blue: 201.0/255.0, alpha: 1.0)]
        
        let startPoint = CGPoint(x: 0, y: 0)
        let endPoint = CGPoint(x: 0.5, y: 0.8)
        
        bgGradient.startPoint = startPoint
        bgGradient.endPoint = endPoint
        
        self.layer.addSublayer(bgGradient)
        
    }
    
    
}
