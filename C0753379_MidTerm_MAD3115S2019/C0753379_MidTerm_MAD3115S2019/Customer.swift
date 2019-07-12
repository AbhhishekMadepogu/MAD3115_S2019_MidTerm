//
//  Customer.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import Foundation
class Customer{
    
    var customerId:Int?
    var firstName:String?
    var lastName:String?
    var fullName: String
    {
        return "\(firstName!) \(lastName!)"
    }
    var emailAddress:String?
    lazy var billsArray:[Bill]=[Bill]()
    var billTotal:Float{
        var finalBillTotal:Float = 0.0
        for i in billsArray {
            //finalBillTotal = finalBillTotal + i.billTotal;
        }
        return finalBillTotal
    }
    
     var  customersDict=[Customer]()
    init(customerId:Int,firstName:String,lastName:String,emailAddress:String,billsArray:[Bill]) {
        self.customerId=customerId
        self.firstName=firstName
        self.lastName=lastName
        self.emailAddress=emailAddress
        self.billsArray=billsArray
    }
    
    
}
