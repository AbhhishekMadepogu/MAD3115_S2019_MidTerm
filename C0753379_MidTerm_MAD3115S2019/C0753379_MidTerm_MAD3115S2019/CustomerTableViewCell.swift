//
//  CustomerTableViewCell.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-12.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit

class CustomerTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCustomers: UILabel!
    
    func setcell(cust:Customer){
        lblCustomers.text=Customer.fullName
    }
}
