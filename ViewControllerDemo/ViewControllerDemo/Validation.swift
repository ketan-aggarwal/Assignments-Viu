//
//  Validation.swift
//  ViewControllerDemo
//
//  Created by Ketan Aggarwal on 20/10/23.
//

import Foundation

func isValidEmail(_ email: String)-> Bool {
    let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    return emailPredicate.evaluate(with: email)
}

func isValidPassword(_ password: String) -> Bool {
    
    if(password.count > 2){
        return true
    }else{
        return false
    }
}
