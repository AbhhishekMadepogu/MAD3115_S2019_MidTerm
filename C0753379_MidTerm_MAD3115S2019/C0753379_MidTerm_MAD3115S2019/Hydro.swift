//
//  Hydro.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import Foundation
class Hydro:Bill{
    var agencyName:String?
    var unitConsumed:String?
    init(agencyName:String,unitConsumed:String, billId:Int,billType:String,billDate:String,billTotal:Float) {
        self.agencyName=agencyName
        self.unitConsumed=unitConsumed
        super.init(billId: billId, billType: billType, billDate: billDate,billTotal:billTotal)
        
}
    
}
