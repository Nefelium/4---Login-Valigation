//
//  LoginViewController.swift
//  LoginValidation
//
//  Created by admin on 03.02.2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {
    
    static let access = LoginViewController()
    
    @IBOutlet weak var loginField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
       
        if isValidLogin(testStr: loginField.text!) {
            showAlert(message: "Login is valid")
        } else {
            showAlert(message: "Login is not valid")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    func isValidLogin(testStr: String) -> Bool {
        let loginRegEx = "[A-Za-z]{1}+[A-Za-z0-9\\.\\-\\@]{3,32}"
        let loginTest = NSPredicate(format: "SELF MATCHES %@", loginRegEx)
        return loginTest.evaluate(with: testStr)
    }
    
    func showAlert(message: String?) {
        let alert = UIAlertController(title: "Sign in", message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }



}
