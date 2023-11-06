//
//  CustomTableViewCell.swift
//  TableDemo
//
//  Created by Ketan Aggarwal on 17/10/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

   
    static let reuseIdentifier="CustomTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var sImg: UIImageView!
    
    @IBOutlet weak var nLabel: UILabel!
    
    @IBOutlet weak var aLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
