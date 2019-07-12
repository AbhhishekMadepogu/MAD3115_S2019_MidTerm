//
//  Bill.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import Foundation
class Bill{
    var billId:Int?
    var billType:String?
    var billDate:String?
    var billTotal:Float?
    init(billId:Int,billType:String,billDate:String,billTotal:Float) {
        self.billId=billId
        self.billType=billType
        self.billDate=billDate
        self.billTotal=billTotal
    }
    var billsArray=[Bill]()
}
