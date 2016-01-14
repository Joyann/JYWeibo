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
    
    class func visitorView() -> VisitorView? {
        return NSBundle.mainBundle().loadNibNamed("VisitorView", owner: nil, options: nil).first as? VisitorView
    }
    
    
    
}
