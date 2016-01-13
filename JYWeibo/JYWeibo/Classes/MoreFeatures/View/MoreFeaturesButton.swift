//
//  MoreFeaturesButton.swift
//  JYWeibo
//
//  Created by joyann on 16/1/13.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class MoreFeaturesButton: UIButton {

    // MARK: - Life Cycle
    init(title: String, imageName: String) {
        super.init(frame: CGRectZero)
        
        self.commonInit()
        
        setImage(UIImage(named: imageName), forState: .Normal)
        setTitle(title, forState: .Normal)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.titleLabel?.center = CGPoint(x: (self.imageView?.center.x)!, y: CGRectGetMaxY((self.imageView?.frame)!) + 18)
        
        sizeToFit()

    }
    
    // MARK: - Private Methods
    
    func commonInit() {
        titleLabel?.font = UIFont.systemFontOfSize(13.0)
        setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
    }

}
