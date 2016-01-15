//
//  RegisterViewController.swift
//  JYWeibo
//
//  Created by joyann on 16/1/15.
//  Copyright © 2016年 Joyann. All rights reserved.
//

import UIKit

class RegisterViewController: UITableViewController {

    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    var errorInfo: String?
    var isTextError: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commonInit()
    }
    
    // MARK: - Private Methods

    private func commonInit() {
        tableView.backgroundColor = UIColor(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        tableView.separatorStyle = .None
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        
        phoneTextField.delegate = self
        phoneTextField.tag = PHONE_TEXT_FIELD
        
        pwdTextField.delegate = self
        pwdTextField.tag = PWD_TEXT_FIELD
    }
    
    @IBAction func dismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}

extension RegisterViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(textField: UITextField) {
        if textField.tag == PHONE_TEXT_FIELD {
            errorInfo = "你的手机号不是11位数"
            guard let text = textField.text else {
                // 说明textFild.text为空
                return
            }
            // 验证手机号是否为11位
            if text.characters.count != 11 {
                errorInfo = "你的手机号不是11位数"
                isTextError = true
            } else {
                errorInfo = "密码为6~16位数字或字母"
                isTextError = false
            }
        }
        
        tableView.reloadData()
    }
}

extension RegisterViewController {
    
    override func tableView(tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
        guard let headerFooterView = view as? UITableViewHeaderFooterView else {
            return
        }
        if isTextError {
            headerFooterView.textLabel?.textColor = UIColor.redColor()
        } else {
            headerFooterView.textLabel?.textColor = UIColor.blackColor()
        }
    }
    
    override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 1 {
            return errorInfo
        }
        return nil
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 2 {
            return 250
        } else {
            return super.tableView(tableView, heightForFooterInSection: section)
        }
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 2 {
            return RegisterFooterView.footerView()
        }
        return nil
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}
