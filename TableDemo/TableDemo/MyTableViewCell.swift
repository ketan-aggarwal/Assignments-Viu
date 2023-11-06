//
//  MyTableViewCell.swift
//  TableDemo
//
//  Created by Ketan Aggarwal on 13/10/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    //static let reuseIdentifier = "MyTableViewCell"
    
    
    @IBOutlet  var studImg: UIImageView!
    
    @IBOutlet  var nameLabel: UILabel!
    @IBOutlet  var ageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
