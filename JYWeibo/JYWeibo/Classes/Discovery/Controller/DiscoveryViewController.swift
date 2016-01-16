//
//  DicoveryViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class DiscoveryViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = "发现页面"
        let imageName = "visitordiscover_image_message"
        setupVisitorViewWithText(text, imageName: imageName, isMain: false)
    }

}
