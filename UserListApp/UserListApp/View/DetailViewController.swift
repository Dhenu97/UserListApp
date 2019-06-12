//
//  DetailViewController.swift
//  UserListApp
//
//  Created by BridgeLabz on 17/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var name: UILabel!
    
    @IBOutlet var lastname: UILabel!

    @IBOutlet var city: UILabel!
    
    @IBOutlet var state: UILabel!

    @IBOutlet var country: UILabel!
    
    @IBOutlet var street: UILabel!
    
    @IBOutlet var pincode: UILabel!
    
    @IBOutlet var phonenumber: UILabel!

    @IBOutlet var age: UILabel!
    
    
    @IBOutlet var navigationbar: UINavigationBar!
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func dict(object:[String:String]) {
    }

    
}
