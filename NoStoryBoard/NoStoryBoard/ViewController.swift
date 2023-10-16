//
//  ViewController.swift
//  NoStoryBoard
//
//  Created by Ketan Aggarwal on 16/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button1=UIButton()
        button1.setTitle("Button1", for: .normal)
        button1.backgroundColor = .blue
        
        let button2=UIButton()
        button1.setTitle("Button2", for: .normal)
        button1.backgroundColor = .green
        
        let button3=UIButton()
        button1.setTitle("Button3", for: .normal)
        button1.backgroundColor = .red
        
        let button4=UIButton()
        button1.setTitle("Button4", for: .normal)
        button1.backgroundColor = .gray
        
        let button5=UIButton()
        button5.setTitle("Button5", for: .normal)
        button5.backgroundColor = .yellow
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        button4.translatesAutoresizingMaskIntoConstraints = false
        button5.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
                    button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),

                    button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor, constant: 20),
                    button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),

                    button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    button3.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20),

                    button4.leadingAnchor.constraint(equalTo: button3.trailingAnchor, constant: 20),
                    button4.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 20),
                    
                    button5.leadingAnchor.constraint(equalTo:button3.leadingAnchor),
                    button5.trailingAnchor.constraint(equalTo: button4.trailingAnchor)
                    
                    
                    
                ])
        
    }


}

