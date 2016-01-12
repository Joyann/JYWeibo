//
//  Common.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

/* ------------------- view 尺寸 ----------------------- */

let SCREEN_BOUNDS = UIScreen.mainScreen().bounds
let SCREEN_WIDTH  = UIScreen.mainScreen().bounds.size.width
let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height

/* ------------------- 颜色相关 ------------------------- */
    
func Color(r r: Float, g: Float, b: Float, a: Float) -> UIColor {
    return UIColor(colorLiteralRed: r, green: g, blue: b, alpha: a)
}

func RandomColor() -> UIColor {
    let r = Float(arc4random_uniform(256)) / 255.0
    let g = Float(arc4random_uniform(256)) / 255.0
    let b = Float(arc4random_uniform(256)) / 255.0
    let a = Float(arc4random_uniform(101)) / 100.0
    return Color(r: r, g: g, b: b, a: a)
}
