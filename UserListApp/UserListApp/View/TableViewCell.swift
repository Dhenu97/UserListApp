//
//  TableViewCell.swift
//  UserListApp
//
//  Created by BridgeLabz on 17/05/19.
//  Copyright © 2019 BridgeLabz. All rights reserved.
//

import UIKit

public class TableViewCell: UITableViewCell {

    override public func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBOutlet var name: UILabel!
    
    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
