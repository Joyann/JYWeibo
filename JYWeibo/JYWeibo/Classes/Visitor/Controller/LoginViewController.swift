//
//  LoginViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/16.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 加载授权页面
        let request = NSURLRequest(URL: NSURL(string: WEIBO_AUTH_URL)!)
        webView.loadRequest(request)
    }
    
    // MARK: - Private Methods
    
    @IBAction func dismiss(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
   
}
