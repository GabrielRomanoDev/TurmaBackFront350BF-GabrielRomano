//
//  ViewController.swift
//  protocolAndNotificationCenter
//
//  Created by Gabriel Luz Romano on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupObserver()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedNextScreenButton(_ sender: UIButton) {
        let vc: SegundaTela? = UIStoryboard(name: "SegundaTela", bundle: nil).instantiateViewController(withIdentifier: "SegundaTela") as? SegundaTela
        present(vc ?? UIViewController(), animated: true)
    }
    
    func setupObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: Notification.Name("macbook"), object: nil)
    }
    
    @objc func updateMacbook(notification: NSNotification){
        print(#function)
        
    }
    
}

