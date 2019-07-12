//
//  Internet.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import Foundation
class Internet:Bill
{
    var providerName:String?
    var InternetGbUsed:Int?
    init(providerName:String,InternetGbUsed:Int,billId:Int,billType:String,billDate:String,billTotal:Float){
        self.providerName=providerName
        self.InternetGbUsed=InternetGbUsed
        super.init(billId: billId, billType: billType, billDate: billDate,billTotal:billTotal)
}
}
