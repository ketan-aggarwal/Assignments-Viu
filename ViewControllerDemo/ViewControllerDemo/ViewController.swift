//
//  ViewController.swift
//  ViewControllerDemo
//
//  Created by Ketan Aggarwal on 13/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btn: UIButton!
    @IBOutlet var passTxt: UITextField!
    @IBOutlet var emailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnTapped(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DataDetailsViewController") as! DataDetailsViewController
        vc.email = emailTxt.text!
        vc.pass = passTxt.text!
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
}

