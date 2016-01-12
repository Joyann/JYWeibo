//
//  UIView+Extension.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

extension UIView {
    
    var frameX: CGFloat {
        return self.frame.origin.x
    }
    
    var frameY: CGFloat {
        return self.frame.origin.y
    }
    
    var frameWidth: CGFloat {
        return self.frame.size.width
    }
    
    var frameHeight: CGFloat {
        return self.frame.size.height
    }
    
    var boundsWidth: CGFloat {
        return self.bounds.size.width
    }
    
    var boundsHeight: CGFloat {
        return self.bounds.size.height
    }
    
 
}