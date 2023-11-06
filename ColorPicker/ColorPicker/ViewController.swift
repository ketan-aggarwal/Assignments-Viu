//
//  ViewController.swift
//  ColorPicker
//
//  Created by Ketan Aggarwal on 20/10/23.
//

import UIKit

class ViewController: UIViewController, ColorSelectionDelegate {
    
    

    @IBOutlet weak var pickerBtn: UIButton!
    @IBOutlet weak var ColorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ColorView.backgroundColor = .red
    }


    @IBAction func changeColor(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let colorVC = storyboard.instantiateViewController(withIdentifier: "ColorDetailsViewController") as! ColorDetailsViewController
                colorVC.delegate = self
                //present(colorVC,animated:true,completion: nil)
        self.navigationController?.present(colorVC, animated: true)
       
        
    }
    
    
    func colorSelected(_ color:UIColor){
        ColorView.backgroundColor = color
    }
    
}

