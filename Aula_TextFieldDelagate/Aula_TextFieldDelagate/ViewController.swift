//
//  ViewController.swift
//  Aula_TextFieldDelagate
//
//  Created by Gabriel Luz Romano on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.placeholder = "Digite seu nome"
        self.nameTextField.delegate = self
        
    }


}

extension ViewController : UITextFieldDelegate{
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "Caio" {
            print("Caio")
        } else {
            print("Outro")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

