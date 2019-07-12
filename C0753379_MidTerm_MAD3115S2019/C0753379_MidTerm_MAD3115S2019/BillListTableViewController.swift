//
//  BillListTableViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-12.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit
var customers=Array<Customer>()

class BillListTableViewController: UIViewController,UITabBarDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "customercell")as! UITableViewCell
        cell.textLabel?.text=customers[indexPath.row].fullName
        let tapGesture=UITapGestureRecognizer(target: self, action: #selector(self.tapBtnAction(_:)))
        cell.tag=indexPath.row
        cell.addGestureRecognizer(tapGesture)
        return cell
    }
    

    @IBOutlet weak var tblCustomer: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var mb1:Mobile=Mobile.init(mobileModelName: "Iphone", mobileNummber: "4379834737", internetGbUsed: 35, minutesUsed: 100, billId: 01, billType: "Mobile", billDate:"10/05/2019" ,billTotal:200)
        var mb2:Mobile=Mobile.init(mobileModelName: "Android", mobileNummber: "4379834737", internetGbUsed: 40, minutesUsed: 200, billId: 02, billType: "Mobile", billDate: "20/05/2019",billTotal:400)
        //creating hydro bills
        var hb1:Hydro=Hydro.init(agencyName: "Ontario", unitConsumed: "114", billId: 01, billType: "Hydro", billDate: "20/05/2019",billTotal:500)
        var hb2:Hydro=Hydro.init(agencyName: "Ontario", unitConsumed: "110", billId: 02, billType: "Hydro", billDate: "20/05/2019",billTotal:600)
        // creating Internet bills
        var ib1:Internet=Internet.init(providerName: "Bell", InternetGbUsed: 89, billId: 01, billType: "Internet", billDate: "10/05/2019",billTotal:600)
        var ib2:Internet=Internet.init(providerName: "Rogers", InternetGbUsed: 90, billId: 02, billType: "Internet", billDate: "20/05/2019",billTotal:700)
        //CUSTOMERS CREATION
        
        
        var c1:Customer=Customer.init(customerId: 01, firstName: "Abhishek", lastName: "Madepogu", emailAddress: "abhishek.madepogu@gmail.com", billsArray: [mb1,hb1,ib1])
       customers.append(c1)
        
        
        var c2:Customer=Customer.init(customerId: 02, firstName: "Ashish", lastName: "Madepogu", emailAddress: "ashish.madepogu@gmail.com", billsArray: [mb2,hb2,ib2])

        customers.append(c2)


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
    @objc func tapBtnAction(_ sender:UITapGestureRecognizer){
        Customer.activeCustomer=self.customers[(sender.view?.tag)!]
        self.performSegue(withIdentifier: "Details", sender: self)
    }

}
