//
//  TabViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.addSubviewControllers()
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Override Methods
    
    override func addChildViewController(childController: UIViewController) {
        let naviVC: NavigationViewController = NavigationViewController(rootViewController: childController)
        super.addChildViewController(naviVC)
    }
    
    // MARK: - Private Methods
    
    private func addSubviewControllers() {
        let homeVC = HomeViewController()
        self.addChildViewController(homeVC)
        homeVC.tabBarItem.configureItemWithTitle("首页", imageName: "tabbar_home")
        
        let messageVC = MessageViewController()
        self.addChildViewController(messageVC)
        messageVC.tabBarItem.configureItemWithTitle("消息", imageName: "tabbar_message_center")
        
        // 占位控制器
        let placeholderVC = UIViewController()
        self.addChildViewController(placeholderVC)
        
        let discoveryVC = DiscoveryViewController()
        self.addChildViewController(discoveryVC)
        discoveryVC.tabBarItem.configureItemWithTitle("发现", imageName: "tabbar_discover")
        
        let meVC = MeViewController()
        self.addChildViewController(meVC)
        meVC.tabBarItem.configureItemWithTitle("我", imageName: "tabbar_profile")
    }
    
    private func commonInit() {
        view.tintColor = UIColor.orangeColor()
    }

}

extension UITabBarItem {

    func configureItemWithTitle(title: String, imageName name: String) {
        self.title = title
        self.image = UIImage(named: name)
        // 自动根据imageName设置selImageName
        self.selectedImage = UIImage(named: name + "_highlighted")
    }
}
