//
//  SegundaTela.swift
//  protocolAndNotificationCenter
//
//  Created by Gabriel Luz Romano on 04/05/23.
//

import UIKit

class SegundaTela: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func tappedMacbookButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("macbook"), object: UIColor.red)
        dismiss(animated: true)
    }
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("imac"), object: UIColor.red)
        dismiss(animated: true)
    }
    
}
