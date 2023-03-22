//
//  ViewController.swift
//  Exercicio1_TextFieldDelagate
//
//  Created by Gabriel Luz Romano on 22/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var cadastroButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cadastroButton.isEnabled=false
        nomeTextField.placeholder = "Nome"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Senha"
        
        self.nomeTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        
        nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
        nomeTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 1
        
    }
    
    @IBAction func tappedCadastroButton(_ sender: UIButton) {
        print("Cadastro Realizado com Sucesso")
    }
     

}

extension ViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty == true{
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth=2
        } else {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
        
        if nomeTextField.text?.isEmpty == false && emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
            cadastroButton.isEnabled = true
        }
        
    }
    
}
