//
//  ColorCollectionViewCell.swift
//  GridView
//
//  Created by Ketan Aggarwal on 19/10/23.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var favouriteIcon: UIImageView!
    struct Item {
           let color: UIColor
           var isFavorite: Bool
        
        init(color: UIColor, isFavorite: Bool) {
            self.color = color
            self.isFavorite = isFavorite
        }
       }

     
    }

