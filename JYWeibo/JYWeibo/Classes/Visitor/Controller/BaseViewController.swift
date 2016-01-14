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
    
    override func loadView() {
        setupVisitorView()
    }
    
    // MARK: - Private Methodss

    private func setupVisitorView() {
        guard let visitorView = VisitorView.visitorView() else { //如果无法加载visitorView, 则直接返回
            return;
        }
        
        
        
        self.view = visitorView

    }
}
