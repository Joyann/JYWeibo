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
    
    var visitorView: VisitorView?
    
    // MARK: - Life Cycle
    
    override func loadView() { // 默认刚上来是首页界面
        let text = "关注一些人，回这里看看有什么惊喜"
        let imageName = "visitordiscover_feed_image_house"
        setupVisitorViewWithText(text, imageName: imageName, isMain: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Private Methodss
    
    func setupVisitorViewWithText(text: String, imageName: String, isMain: Bool) {
        guard let visitorView = VisitorView.visitorView() else { //如果无法加载visitorView, 则直接返回
            return;
        }
        
        visitorView.setupVisitorViewWithText(text, imageName: imageName, isMain: isMain)
        
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
        // 显示注册界面
        let sb = UIStoryboard(name: "RegisterViewController", bundle: nil)
        let navi = sb.instantiateInitialViewController()
        guard let navigationVC = navi as? UINavigationController else {
            return
        }
        presentViewController(navigationVC, animated: true, completion: nil)
    }
    
    @objc private func login() {
        // 显示登录界面
        let loginVC = LoginViewController()
        
        presentViewController(loginVC, animated: true, completion: nil)
    }
    
}
