//
//  AddNewBillViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit


class AddNewBillViewController: UIViewController {
    
    @IBOutlet weak var pickerBillType: UIPickerView!
    
    @IBAction func datePicker(_ sender: UIDatePicker) {let date = sender.date
        
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "EEEE, dd-MMM-yyyy hh:mm"
        
        bill.date=dateFormat.string(from: date)
        
    }
    let billsType=["Mobile","Hydro","Internet"]
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
extension AddNewBillViewController:UIPickerViewDelegate{
    
}
extension AddNewBillViewController:UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return billsType.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    
    
}
