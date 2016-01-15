//
//  RegisterTableViewCell.swift
//  JYWeibo
//
//  Created by joyann on 16/1/15.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class RegisterTableViewCell: UITableViewCell {

    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame = newFrame
            frame.origin.y -= 1
            super.frame = frame
        }
    }

}
