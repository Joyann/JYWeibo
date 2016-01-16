//
//  MessageViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "登录后，别人评论你的微博，给你发消息，都会在这里收到通知"
        let imageName = "visitordiscover_image_message"
        setupVisitorViewWithText(text, imageName: imageName, isMain: false)
    }

}
