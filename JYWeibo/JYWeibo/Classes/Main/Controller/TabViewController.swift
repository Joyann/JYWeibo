//
//  TabViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/12.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    
    // MARK: - Life Cycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.addSubviewControllers()
        self.commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addCenterButton()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.configureItems()
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
    
    private func addCenterButton() {
        let addButton = UIButton(type: .Custom)
        addButton.setImage(UIImage(named: "tabbar_compose_icon_add"), forState: .Normal)
        addButton.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), forState: .Highlighted)
        addButton.setBackgroundImage(UIImage(named: "tabbar_compose_button"), forState: .Normal)
        addButton.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), forState: .Normal)
        addButton.sizeToFit()
        addButton.center = CGPoint(x: tabBar.boundsWidth * 0.5, y: tabBar.boundsHeight * 0.5)
        
        addButton.addTarget(self, action: Selector("addButtonClicked:"), forControlEvents: .TouchUpInside)
        
        tabBar.addSubview(addButton)
    }
    
    private func configureItems() {
        
        guard let items = tabBar.items else {
            return
        }
        
        for i in 0..<items.count {
            let item = tabBar.items![i]
            if i == 2 {
                item.enabled = false
            }
        }
    }
    
    // MARK: - Taget Actions
    @objc private func addButtonClicked(button: UIButton) {
        let addVC = MoreFeaturesViewController()
        
        presentViewController(addVC, animated: true, completion: nil)
    }

}

extension UITabBarItem {
    // 根据title和imageName设置tab bar item的外观.
    func configureItemWithTitle(title: String, imageName name: String) {
        self.title = title
        self.image = UIImage(named: name)
        // 自动根据imageName设置selImageName
        self.selectedImage = UIImage(named: name + "_highlighted")
    }
    
}
