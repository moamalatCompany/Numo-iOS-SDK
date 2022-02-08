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
            paymentViewController.mId = "10098206085" // Merchant id
            paymentViewController.tId = "94674732" // Terminal  id
            paymentViewController.Currency = "434"
            paymentViewController.refnumber = "009090978879"
        paymentViewController.AppStatus =  NumoUrlTypes.Numo_Testing
            paymentViewController.Key = "63336634373139362D616530392D346532642D383861372D623666333963656563623265" // merchant secrue hash
            paymentViewController.pushViewController()
        
        
    }


}

