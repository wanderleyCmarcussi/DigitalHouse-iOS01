//
//  ViewController.swift
//  UITextField
//
//  Created by Wanderley Marcussi on 11/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.isEqual(self.emailTextField) {
            self.passwordTextField.becomeFirstResponder()
        } else {
                self.passwordTextField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = .green
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.backgroundColor = .gray
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }
    
}

