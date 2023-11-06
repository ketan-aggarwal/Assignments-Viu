//
//  ViewController.swift
//  ViewControllerDemo
//
//  Created by Ketan Aggarwal on 13/10/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var btn: UIButton!
    @IBOutlet var passTxt: UITextField!
    @IBOutlet var emailTxt: UITextField!
    
    
    
    @IBOutlet weak var warningTxt: UILabel!

    var passwordFieldTapped = false
    
    var buttonManager: BtnColor!

        override func viewDidLoad() {
            super.viewDidLoad()

            buttonManager = BtnColor()
            passTxt.delegate = self
            emailTxt.delegate = self
            passTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
            emailTxt.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
            buttonManager.updateButtonStateAndColor(false, btn)
            passTxt.isSecureTextEntry = true
         
        }





    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if textField == emailTxt {
                let currentEmail = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
                if isValidEmail(currentEmail)
                {
                    warningTxt.text = "Valid Email"
                    warningTxt.textColor = .green
                }else if(currentEmail.isEmpty){
                    warningTxt.text = "Email field is empty"
                }else{
                    warningTxt.text = "Invalid Email"
                    warningTxt.textColor = .red
                }
            }
            if textField == passTxt {
                let currentPassword = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) ?? ""
                if isValidPassword(currentPassword)
                {
                    warningTxt.text = "Valid Password"
                    warningTxt.textColor = .green
                } else if(currentPassword.isEmpty){
                    warningTxt.text = "Password Field is empty"
                }else{
                    warningTxt.text = "Invalid Password"
                    warningTxt.textColor = .red
                }
            }

            return true
        }




    

        func textFieldDidBeginEditing(_ textField: UITextField) {
            if textField == emailTxt && !passwordFieldTapped {
                textField.text = ""
                passTxt.text = ""
                passwordFieldTapped = true
            }
        }
    
   
        
    
    @objc func textFieldDidChange() {
           let email = emailTxt.text!
           let pass = passTxt.text!
           if isValidEmail(email) && isValidPassword(pass) {
               buttonManager.updateButtonStateAndColor(true, btn)
           } else {
               buttonManager.updateButtonStateAndColor(false, btn)
           }
       }


    @IBAction func btnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DataDetailsViewController") as! DataDetailsViewController
        vc.email = emailTxt.text!
        vc.pass = passTxt.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



