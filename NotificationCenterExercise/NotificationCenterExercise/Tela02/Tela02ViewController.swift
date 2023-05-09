//
//  Tela02ViewController.swift
//  NotificationCenterExercise
//
//  Created by Gabriel Luz Romano on 09/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedAddNameButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("recebeNome"), object: nameTextField.text)
        let vc: Tela01ViewController? = UIStoryboard(name: Tela01ViewController.identifier, bundle: nil).instantiateViewController(withIdentifier: Tela01ViewController.identifier) as? Tela01ViewController
        present(vc ?? UIViewController(), animated: true)
    }
    

}
