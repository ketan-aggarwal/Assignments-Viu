//
//  ViewController.swift
//  TableDemo
//
//  Created by Ketan Aggarwal on 12/10/23.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    @IBOutlet var myTable: UITableView!
    
    
    var listStudent=[StudentData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let student1 = StudentData(name: "Ketan", age: 21,studentPhoto: "Image")
        listStudent.append(student1)
        let student2 = StudentData(name: "Samarth", age: 21,studentPhoto: "Image")
        listStudent.append(student2)
        let student3=StudentData(name: "Tejas", age: 21,studentPhoto: "Image")
        listStudent.append(student3)
        let student4=StudentData(name: "Kunal", age: 21,studentPhoto: "Image")
        listStudent.append(student4)
        let student5=StudentData(name: "Pratik", age: 21,studentPhoto: "Image")
        listStudent.append(student5)
        
        myTable.footerView(forSection: .zero)
        myTable.rowHeight = UITableView.automaticDimension

        myTable.estimatedRowHeight = 100
        myTable.register(MyTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.reuseIdentifier,
                                                       
                                                       for: indexPath) as? MyTableViewCell
                
        else {
            
            return UITableViewCell()
            
        }
        
        
        cell.nLabel.text = listStudent[indexPath.row].name
        cell.aLabel.text = String(listStudent[indexPath.row].age)
        cell.studentImg.image = UIImage(named: listStudent[indexPath.row].studentPhoto)
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
        
    }

  
    


