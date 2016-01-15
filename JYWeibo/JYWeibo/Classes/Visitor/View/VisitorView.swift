//
//  VisitorView.swift
//  JYWeibo
//
//  Created by joyann on 16/1/14.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    
    @IBOutlet weak var rotationImageView: UIImageView!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var rotationBgImageView: UIImageView!
    
    // MARK: - Life Cycle
    
    class func visitorView() -> VisitorView? {
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as? VisitorView
    }

    // MARK: - Public Methods
    
    func startAnimating() {
        // 旋转动画
        let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.duration = 8
        rotation.repeatCount = MAXFLOAT
        rotation.fromValue = 0
        rotation.toValue = CGFloat(M_PI * 2)
        self.rotationImageView.layer.addAnimation(rotation, forKey: nil)
    }
    
    
    // MARK: - Private Methodss
    
    
}
