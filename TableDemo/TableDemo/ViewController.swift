//
//  ViewController.swift
//  TableDemo
//
//  Created by Ketan Aggarwal on 12/10/23.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    @IBOutlet var myTable: UITableView!
    
    
    var listStudent=[studentData]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)
        
        
        
        
        let student1 = studentData(name: "Ketan", age: 21,studentPhoto: "Image")
        listStudent.append(student1)
        let student2 = studentData(name: "Samarth", age: 21,studentPhoto: "Image")
        listStudent.append(student2)
        let student3=studentData(name: "Tejas", age: 21,studentPhoto: "Image")
        listStudent.append(student3)
        let student4=studentData(name: "Kunal", age: 21,studentPhoto: "Image")
        listStudent.append(student4)
        let student5=studentData(name: "Pratik", age: 21,studentPhoto: "Image")
        listStudent.append(student5)
        
          //myTable.footerView(forSection: .zero)
//        myTable.rowHeight = UITableView.automaticDimension
//
//       myTable.estimatedRowHeight = 400
//        myTable.register(MyTableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listStudent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.reuseIdentifier,
//
//                                                       for: indexPath) as? CustomTableViewCell
//
//        else {
//
//            return UITableViewCell()
//
//        }
//
//
//        cell.nameLabel.text = listStudent[indexPath.row].name
//        cell.ageLabel.text = String(listStudent[indexPath.row].age)
//        cell.studImg.image = UIImage(named: listStudent[indexPath.row].studentPhoto)
//        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for:indexPath) as! CustomTableViewCell
//        cell.nLabel.text = listStudent[indexPath.row].name
//        cell.aLabel.text = String(listStudent[indexPath.row].age)
//        cell.sImg.image = UIImage(named: listStudent[indexPath.row].studentPhoto)
//        return cell
        
        guard let cell=(tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as? CustomTableViewCell)
        else{
            return UITableViewCell()
        }
        cell.nLabel.text = listStudent[indexPath.row].name
        cell.aLabel.text = String(listStudent[indexPath.row].age)
        cell.sImg.image = UIImage(named: listStudent[indexPath.row].studentPhoto)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    
}





