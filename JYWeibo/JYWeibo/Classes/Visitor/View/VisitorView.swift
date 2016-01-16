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
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var imageViewWCons: NSLayoutConstraint!
    @IBOutlet weak var imageViewHCons: NSLayoutConstraint!
    
    // MARK: - Life Cycle
    
    class func visitorView() -> VisitorView? {
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as? VisitorView
    }

    // MARK: - Public Methods
    
    func setupVisitorViewWithText(text: String, imageName: String, isMain: Bool) {
        self.textLabel.text = text
        self.contentImageView.image = UIImage(named: imageName)
        if isMain { // 如果是主页
            self.startAnimating()
            self.registerButton.hidden = true
            self.loginButton.hidden = true
        } else { // 如果不是主页
            self.rotationImageView.hidden = true
            self.registerButton.hidden = false
            self.loginButton.hidden = false
            self.followButton.hidden = true
            self.imageViewHCons.constant += 100
            self.imageViewWCons.constant += 100
            self.layoutIfNeeded()
        }
    }
    
    func startAnimating() {
        // 旋转动画
        let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.duration = 8
        rotation.repeatCount = MAXFLOAT
        rotation.fromValue = 0
        rotation.toValue = CGFloat(M_PI * 2)
        rotation.removedOnCompletion = false
        
        self.rotationImageView.layer.addAnimation(rotation, forKey: nil)
    }
    
    
    // MARK: - Private Methodss
    
    
}
