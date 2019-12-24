//
//  ViewController.swift
//  SendWhatsAppMessage
//
//  Created by Ghassan Jaam on 12/24/19.
//  Copyright © 2019 Ghassan Jaam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//END
    
    @IBAction func sendToWhatsApp(_ sender: Any) {
        let textEntry: String = "YourMessage"
        let data: String = textEntry.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let number: String = "YourNumber"
        let url = URL(string: "whatsapp://send?phone=\(number)&text=\(data)")
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url!)
        }
    }//END

}//END Class

