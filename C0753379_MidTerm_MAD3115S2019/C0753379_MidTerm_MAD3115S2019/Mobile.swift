//
//  Mobile.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import Foundation
class mobile:Bill{
    var mobileModelName:String?
    var mobileNumber:String?
    var internetGbUsed:Int?
    var minuteUsed:Int?
    init(mobileModelName:String,mobileNummber:String,internetGbUsed:Int,minutesUsed:Int,billId:Int,billType:String,billDate:String,billTotal:Float) {
        self.mobileModelName=mobileModelName
        self.mobileNumber=mobileNummber
        self.internetGbUsed=internetGbUsed
        self.minuteUsed=minutesUsed
        super.init(billId: billId, billType: billType, billDate: billDate,billTotal:billTotal)
        
    
}
