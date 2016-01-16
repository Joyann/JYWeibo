//
//  MeViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class MeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "我"
        let imageName = "visitordiscover_image_message"
        setupVisitorViewWithText(text, imageName: imageName, isMain: false)
    }

}
