//
//  DataDetailsViewController.swift
//  ViewControllerDemo
//
//  Created by Ketan Aggarwal on 13/10/23.
//

import UIKit

class DataDetailsViewController: UIViewController {

 
    @IBOutlet var popBtn: UIButton!
    @IBOutlet var passLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    @IBAction func popAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
   
    var email=""
    var pass=""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text="Email:\(email)"
        passLabel.text="Password:\(pass)"
    }
    

   
}
