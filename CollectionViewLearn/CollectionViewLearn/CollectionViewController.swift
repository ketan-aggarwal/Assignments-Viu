//
//  CollectionViewController.swift
//  CollectionViewLearn
//
//  Created by Ketan Aggarwal on 18/10/23.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    
    let dataSource:[String] = ["India","USA","China","Japan","HOngKOng","Italy","London","Mexico"]
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            
            countryCell.configure(with: dataSource[indexPath.row])
            cell = countryCell
        }
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Country: \(dataSource[indexPath.row])")
    }
 

}
