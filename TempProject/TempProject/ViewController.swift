//
//  ViewController.swift
//  TempProject
//
//  Created by Ketan Aggarwal on 22/10/23.
//

import UIKit


protocol ColorSelectionDelegate: AnyObject {
    func colorSelected(_ color: UIColor)
}

class ViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var colorBox: UIView!
    
    weak var delegate: ColorSelectionDelegate?
    
    let colorData: [(name: String, color: UIColor)] = [
            ("Red", .red),
            ("Green", .green),
            ("Blue", .blue),
            // Add more color entries
        ]
        
    var isTableViewVisible = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.isHidden = true
    }


    @IBAction func toggleTableView(_ sender: Any) {
        isTableViewVisible.toggle()
                tableView.isHidden = !isTableViewVisible
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let (name, color) = colorData[indexPath.row]
        cell.textLabel?.text = name
        cell.contentView.backgroundColor = color
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let (_, color) = colorData[indexPath.row]
        delegate?.colorSelected(color)
       
        tableView.isHidden = true
    }
    
   
}
extension ViewController:ColorSelectionDelegate{
    func colorSelected(_ color: UIColor) {
        print("hello")
        colorBox.backgroundColor = color
    }
}

