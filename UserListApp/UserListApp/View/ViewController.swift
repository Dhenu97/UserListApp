//
//  ViewController.swift
//  UserListApp
//
//  Created by BridgeLabz on 17/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

 class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource
 {
    
    @IBOutlet var tableView: UITableView!

    override public func viewDidLoad()
    {
        super.viewDidLoad()
        JsonUserData.getData()
        data()
        display()

    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JsonUserData.users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        
        guard  let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier:"cell",for:indexPath) as? TableViewCell else{
            
            return UITableViewCell()
            
            
            
        }
        
        cell.name.text = "Name:\(JsonUserData.users[indexPath.row].name)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        
    {
        
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        
        
        
        self.present(detail, animated: true) {
            
            detail.name.text = "Name\t:\t\(JsonUserData.users[indexPath.row].name)"
            
            detail.age.text = "Age\t:\t\(JsonUserData.users[indexPath.row].age)"
            
            detail.phonenumber.text="phonenumber\t:\t\(JsonUserData.users[indexPath.row].phonenumber)"
            
            detail.lastname.text="lastname\t:\t\(JsonUserData.users[indexPath.row].LastName)"
            
            detail.city.text="city\t:\t\(JsonUserData.users[indexPath.row].city)"
            
            detail.country.text="country\t:\t\(JsonUserData.users[indexPath.row].country)"
            
            detail.street.text="street\t:\t\(JsonUserData.users[indexPath.row].Street)"
            
            detail.pincode.text="pincode\t:\t\(JsonUserData.users[indexPath.row].pincode)"
            
            detail.state.text="state\t:\t\(JsonUserData.users[indexPath.row].State)"

            
        }
        
    }
    func data(){
        for _ in JsonUserData.users
        {
            DispatchQueue.main.async
                {
                    self.tableView.reloadData()
            }
        }
    }
    func display() {
        for i in 0..<JsonUserData.users.count{
            print(JsonUserData.users[i].name)
            print(JsonUserData.users[i].age)
            print(JsonUserData.users[i].country)
        }
    }
    
}



    
    
    


