//
//  ColorDetailsViewController.swift
//  ColorPicker
//
//  Created by Ketan Aggarwal on 23/10/23.
//

import UIKit

protocol ColorSelectionDelegate: AnyObject{
    func colorSelected(_ color :UIColor)
}


class ColorDetailsViewController: UIViewController {
    
    @IBOutlet weak var myTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        calculateHeight()
           
    }
    

    func calculateHeight(){
        let rowCount = colors.count
        let totalScreenHeight = myTable.bounds.size.height
        let dynamicRowHeight = totalScreenHeight / CGFloat(rowCount)
        
        myTable.rowHeight = dynamicRowHeight
        myTable.estimatedRowHeight = dynamicRowHeight
    }
    weak var delegate :ColorSelectionDelegate?
    
    
   
    
}

extension ColorDetailsViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let (name, color) = colors[indexPath.row]
        cell.textLabel?.text = name
        cell.contentView.backgroundColor = color
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let (_, color) = colors[indexPath.row]
        delegate?.colorSelected(color)
        dismiss(animated: true,completion: nil)
    }
    
    
    
    
}
