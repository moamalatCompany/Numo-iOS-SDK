//
//  ViewController.swift
//  numo pay
//
//  Created by Maram Sasi on 18/11/2021.
//

import UIKit
import PayButtonNumo

class ViewController: UIViewController, PaymentDelegate {
    var receipt: TransactionStatusResponse = TransactionStatusResponse()

    func finishSdkPayment(_ receipt: TransactionStatusResponse) {
    self.receipt = receipt
    if receipt.Success {
        print("Succsess")

        print(receipt.Message)

    }else {
        print("Fail")
        print(receipt.Message)



        
    }
}
    let paymentViewController = PaymentViewController ()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        paymentViewController.amount =  "10"  // Amount
            paymentViewController.delegate = self // PaymentDelegate
            paymentViewController.mId = "10081014649" // Merchant id
            paymentViewController.tId = "99179395" // Terminal  id
            paymentViewController.Currency = "434"
            paymentViewController.refnumber = "009090978879"
        paymentViewController.AppStatus =  NumoUrlTypes.Numo_Testing
            paymentViewController.Key = "39636630633731362D663963322D346362642D386531662D633963303432353936373431" // merchant secrue hash
            paymentViewController.pushViewController()
        
        
    }


}

