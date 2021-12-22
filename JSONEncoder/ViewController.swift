//
//  ViewController.swift
//  JSONEncoder
//
//  Created by 장효원 on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonCoder = JSONEncoder()
        
        do {
            let data = try jsonCoder.encode(createEmployeeModel())
            
            guard let logString = String(data: data, encoding: .utf8) else { return }
            
            print("JSON Example : ", logString)
        } catch {
            
        }
        
    }

    func createEmployeeModel() -> Employee {
        return Employee(name: "Jackson Jang", email: "example@example.com")
    }
}

