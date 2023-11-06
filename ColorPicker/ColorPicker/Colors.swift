//
//  Colors.swift
//  ColorPicker
//
//  Created by Ketan Aggarwal on 20/10/23.
//

import Foundation
import UIKit

struct Color{
    let name: String
    let cellColor: UIColor
    
    init(name :String, cellColor: UIColor){
        self.name = name
        self.cellColor = cellColor
    }
}
