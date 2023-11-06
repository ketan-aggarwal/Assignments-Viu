//
//  BtnColor.swift
//  ViewControllerDemo
//
//  Created by Ketan Aggarwal on 20/10/23.
//

import Foundation
import UIKit

class BtnColor {
    func updateButtonStateAndColor(_ isValid: Bool, _ button: UIButton) {
        button.isEnabled = isValid
        button.backgroundColor = isValid ? .blue : .gray
    }
}
