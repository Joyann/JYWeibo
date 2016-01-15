//
//  BaseViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/14.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - Propeties
    
    var visitorView: VisitorView? {
        didSet {
            guard let visitor = visitorView else {
                return
            }
            
            visitor.startAnimating()
        }
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        setupVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Private Methodss
    
    private func setupVisitorView() {
        guard let visitorView = VisitorView.visitorView() else { //如果无法加载visitorView, 则直接返回
            return;
        }
        
        self.visitorView = visitorView
        
        // 设置navigationBar上的按钮
        self.configureBarButtonItems()
        
        // 设置标题
        self.navigationItem.title = "首页"
        
        // 设置visitorView为当前view
        self.view = visitorView
    }
    
    private func configureBarButtonItems() {
        let registerButton = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: Selector("register"))
        registerButton.tintColor = UIColor.orangeColor()
        let loginButton = UIBarButtonItem(title: "登录", style: .Plain, target: self, action: Selector("login"))
        registerButton.tintColor = UIColor.orangeColor()
        
        navigationItem.leftBarButtonItem = registerButton
        navigationItem.rightBarButtonItem = loginButton
    }
    
    @objc private func register() {
        
    }
    
    @objc private func login() {
        
    }
    
}
