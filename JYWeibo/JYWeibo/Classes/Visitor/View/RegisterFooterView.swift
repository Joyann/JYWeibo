//
//  RegisterFooterView.swift
//  JYWeibo
//
//  Created by joyann on 16/1/15.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class RegisterFooterView: UIView {
    
    class func footerView() -> RegisterFooterView? {
        guard let registerFooterView = NSBundle.mainBundle().loadNibNamed("RegisterFooterView", owner: nil, options: nil).first as? RegisterFooterView else {
            return nil
        }
        registerFooterView.backgroundColor = UIColor(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        return registerFooterView
    }

}
