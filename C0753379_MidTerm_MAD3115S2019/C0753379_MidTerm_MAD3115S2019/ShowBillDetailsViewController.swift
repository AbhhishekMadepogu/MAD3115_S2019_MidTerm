//
//  ShowBillDetailsViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (Customer.thisCustomer?.billsArray.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "BillsCell") as! UITableViewCell
    }
    
    @IBOutlet weak var lblCustomerId: UILabel!
    
    @IBOutlet weak var lblCustomerName: UILabel!
    @IBOutlet weak var lblcustomeremail: UILabel!
    
    @IBOutlet weak var lbltotal: UILabel!
    @IBOutlet weak var tblBills: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
