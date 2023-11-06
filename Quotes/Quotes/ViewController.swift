//
//  ViewController.swift
//  Quotes
//
//  Created by Ketan Aggarwal on 26/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    let networker = Networker.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTapped(_ sender: Any) {
        networker.getQuote { (kanye, error) -> (Void) in
              if let _ = error {
                self.quoteLabel.text = "Error"
                return
              }
              
              self.quoteLabel.text = kanye?.quote
            }
            
          }
    
}

