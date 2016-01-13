//
//  MorenFeaturesViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/13.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class MoreFeaturesViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    lazy var buttons: [MoreFeaturesButton] = []
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置closeButton初始旋转角度
        self.closeButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))
        
        // 添加buttons
        self.addButtons();
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // 转动closeButton
        UIView.animateWithDuration(0.25) { () -> Void in
            self.closeButton.transform = CGAffineTransformIdentity
        }
        
        // buttons上升动画
        for i in 0..<buttons.count {
            let button = buttons[i]
            UIView.animateWithDuration(0.25, delay: Double(i) * 0.05, options: .CurveEaseOut, animations: { () -> Void in
                button.frame.origin.y = (i >= 3) ? 380 : 250;
                }, completion: { (_) -> Void in
                    UIView.animateWithDuration(0.05, delay: 0, options: UIViewAnimationOptions(rawValue: 0), animations: { () -> Void in
                        button.frame.origin.y = (i >= 3) ? 400 : 270;
                        }, completion: nil)
            })
        }
    }
   
    // MARK: - Target Actions
    
    @IBAction func close(sender: AnyObject) {
        // 转动closeButton
        self.closeButton.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4))

        // buttons下降动画
        
        var index: Double = 0
        for var i = self.buttons.count - 1; i >= 0; i-- {
            let button = self.buttons[i]
            UIView.animateWithDuration(0.1, delay: index * 0.05, options: .CurveEaseIn, animations: { () -> Void in
                button.frame.origin.y = (i >= 3) ? SCREEN_HEIGHT + 130 : SCREEN_HEIGHT;
                }, completion: nil)
            index++;
        }
        
        self.performSelector(Selector("dismissVC"), withObject: nil, afterDelay: 0.1 * Double(self.buttons.count))
    }
    
    @objc private func dismissVC() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: - Ptivate Methods
    private func addButtons() {
        
        let textButton = MoreFeaturesButton(title: "文字", imageName: "tabbar_compose_idea")
        self.view.addSubview(textButton)
        self.buttons.append(textButton)
        textButton.sizeToFit()
        
        let photoButton = MoreFeaturesButton(title: "图片/视频", imageName: "tabbar_compose_photo")
        self.view.addSubview(photoButton)
        self.buttons.append(photoButton)
        
        let articleButton = MoreFeaturesButton(title: "文章", imageName: "tabbar_compose_weibo")
        self.view.addSubview(articleButton)
        self.buttons.append(articleButton)
        
        let lbsButton = MoreFeaturesButton(title: "签到", imageName: "tabbar_compose_lbs")
        self.view.addSubview(lbsButton)
        self.buttons.append(lbsButton)
        
        let reviewButton = MoreFeaturesButton(title: "点评", imageName: "tabbar_compose_review")
        self.view.addSubview(reviewButton)
        self.buttons.append(reviewButton)
        
        let moreButton = MoreFeaturesButton(title: "更多", imageName: "tabbar_compose_more")
        self.view.addSubview(moreButton)
        self.buttons.append(moreButton)
        
        // 布局buttons
        let cols: CGFloat = 3
        let width: CGFloat = 71
        let margin: CGFloat = (SCREEN_WIDTH - cols * width) / (cols + 1)
        let height = width
        for i in 0..<buttons.count {
            let index = i % Int(cols)
            let x: CGFloat = margin + (CGFloat(index) * (width + margin))
            let y: CGFloat = (i >= 3) ? SCREEN_HEIGHT + 130 : SCREEN_HEIGHT;
            let button = buttons[i]
            button.frame = CGRect(x: x, y: y, width: width, height: height)
        }
    }
    
    
}
