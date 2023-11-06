//
//  ViewController.swift
//  ProgramConstraints
//
//  Created by Ketan Aggarwal on 17/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

                // Create and configure buttons
                let button1 = UIButton()
                button1.setTitle("Button 1", for: .normal)
                button1.backgroundColor = .blue

                let button2 = UIButton()
                button2.setTitle("Button 2", for: .normal)
                button2.backgroundColor = .green

                let button3 = UIButton()
                button3.setTitle("Button 3", for: .normal)
                button3.backgroundColor = .red

                let button4 = UIButton()
                button4.setTitle("Button 4", for: .normal)
                button4.backgroundColor = .orange

                let button5 = UIButton()
                button5.setTitle("Button 5", for: .normal)
                button5.backgroundColor = .yellow
                
        
                view.addSubview(button1)
                view.addSubview(button2)
                view.addSubview(button3)
                view.addSubview(button4)
                view.addSubview(button5)

                // Add Auto Layout constraints
                button1.translatesAutoresizingMaskIntoConstraints = false
                button2.translatesAutoresizingMaskIntoConstraints = false
                button3.translatesAutoresizingMaskIntoConstraints = false
                button4.translatesAutoresizingMaskIntoConstraints = false
                button5.translatesAutoresizingMaskIntoConstraints = false
        


                NSLayoutConstraint.activate([
                    button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                    button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
                    button1.widthAnchor.constraint(equalToConstant: 150),
                    button1.heightAnchor.constraint(equalToConstant: 30),
                    
                    
//                    button2.leadingAnchor.constraint(equalTo: button1.trailingAnchor, constant: 30),
                    button2.trailingAnchor.constraint(equalTo:view.trailingAnchor, constant: -20),
                    button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
                    
                    button2.widthAnchor.constraint(equalTo:button1.widthAnchor),
                    button2.heightAnchor.constraint(equalTo: button1.heightAnchor),
                    
                    
                    button3.leadingAnchor.constraint(equalTo: button1.leadingAnchor),
                    button3.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    button3.widthAnchor.constraint(equalTo:button1.widthAnchor),
                    button3.heightAnchor.constraint(equalTo: button1.heightAnchor),
                    
//                    button4.leadingAnchor.constraint(equalTo: button3.trailingAnchor, constant: 30),
                    button4.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                    button4.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                    button4.widthAnchor.constraint(equalTo:button1.widthAnchor),
                    button4.heightAnchor.constraint(equalTo: button1.heightAnchor),
                    
                    
                    button5.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                    button5.leadingAnchor.constraint(equalTo: button3.leadingAnchor),
                    button5.trailingAnchor.constraint(equalTo: button4.trailingAnchor)
                    


                                    ])
    }


}

