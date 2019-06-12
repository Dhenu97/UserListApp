//
//  JsonUserData.swift
//  UserListApp
//
//  Created by BridgeLabz on 17/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import Foundation

public class JsonUserData {
    
   static var users = [UsersList]()
    
    static func getData()
    {
        
        guard let url = Bundle.main.url(forResource:"jsondata", withExtension:"json") else {
            return
        }
        do
        {
            let jsonData = try Data(contentsOf: url)
            let jsondata = try JSONDecoder().decode(StructData.self, from: jsonData)
            if jsondata.users.count > 0{
                users = jsondata.users
            }
        }
        catch
        {
            print("error",error.localizedDescription)
        }
    }
    
}

