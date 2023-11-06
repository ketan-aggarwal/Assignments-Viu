//
//  ViewController.swift
//  OperationsDemo
//
//  Created by Ketan Aggarwal on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
      testOperations()
        print("Custom operation executed")
    
        
    }
    
    func testOperations(){
        let operations: OperationQueue = OperationQueue()
         
        let operation1: BlockOperation = BlockOperation()
        operation1.addExecutionBlock {
                print("operation 1 being executed")
        }
        
        operation1.completionBlock = {
            print("operation 1 executed")
        }
        operationQueue.addOperation(operation1)
    }
    
}

