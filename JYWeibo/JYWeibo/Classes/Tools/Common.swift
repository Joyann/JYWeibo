//
//  Common.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

/* ------------------- Weibo 授权 ----------------------- */

let APP_KEY = "39779882"
let APP_SECRET = "a93b2998486f637c6298776a506c2f67"
let WEIBO_REDIRECT_URI = "http://www.baidu.com"
let WEIBO_AUTH_URL = "https://api.weibo.com/oauth2/authorize?client_id=\(APP_KEY)&response_type=code&redirect_uri=\(WEIBO_REDIRECT_URI)"

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

/* ------------------- Tag属性 ------------------------- */

let PHONE_TEXT_FIELD = 1001
let PWD_TEXT_FIELD   = 1002

/* ------------------- 自定义输出 ------------------------ */
func JYLog<T>(msg: T, fileName: String = __FILE__, funcName: String = __FUNCTION__, line: Int = __LINE__) {
    #if DEBUG
    print("[FILENAME]:\((fileName as NSString).lastPathComponent)\n[FUNCNAME]:\(funcName)\n[LINE]:\(line)\n[MESSAGE]:\(msg)\n")
    #endif
}


