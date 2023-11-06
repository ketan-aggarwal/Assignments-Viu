//
//  CollectionViewCell.swift
//  CollectionViewLearn
//
//  Created by Ketan Aggarwal on 18/10/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
   
    
    @IBOutlet weak var countryLabel: UILabel!
    
    func configure(with countryName:String){
        countryLabel.text = countryName
    }
}
