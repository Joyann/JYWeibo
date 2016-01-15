//
//  RegisterViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/15.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class RegisterViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        commonInit()

    }

    private func commonInit() {
        tableView.backgroundColor = UIColor(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        tableView.separatorStyle = .None
    }
    
}
