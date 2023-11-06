//
//  ViewController.swift
//  CollectionnViewDemo
//
//  Created by Ketan Aggarwal on 18/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button=UIButton(frame:CGRect(x:0,y:0,width:200,height:50))
        view.addSubview(button)
        button.backgroundColor = .blue
        button.center = view.center
        button.setTitle("Show Collection info", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
       
    }
    @objc func didTapButton(){
        let layout = UICollectionViewLayout()
        layout.itemSize = CGSize(width: 150, height: 150)
        let vc = GridCollectionViewController(collectionViewLayout: layout)
        present(vc, animated: true)
    }

}

