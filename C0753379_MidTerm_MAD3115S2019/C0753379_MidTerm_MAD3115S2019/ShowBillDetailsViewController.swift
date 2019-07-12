//
//  ShowBillDetailsViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var customer:Customer?
    var bills=Array<Bill>()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Customer.thisCustomer?.billsArray.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "BillsCell") as! UITableViewCell
        //cell.textLabel?.text=bills.[indexPath.row].billType
        
        return cell
        
    }
    
    @IBOutlet weak var lblCustomerId: UILabel!
    
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblcustomeremail: UILabel!
    
    @IBOutlet weak var lbltotal: UILabel!
    @IBOutlet weak var tblBills: UITableView!
    override func viewDidLoad() {
        bills=customer!.billsArray
        super.viewDidLoad()
        //lblCustomerId.text=String(customer?.customerId) as String
        lblCustomerName.text=customer?.fullName
        lblcustomeremail.text=customer?.emailAddress
         var billtotals=Float()
        for i in bills{
            var billtotals=billtotals+i.billTotal!
            
        }
        lbltotal.text=String(billtotals)
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
