//
//  ViewController.swift
//  Exercicio2_TextFieldDelegate
//
//  Created by Gabriel Luz Romano on 22/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var password1TextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cadastrarButton.isEnabled = false
        //password1TextField.isSecureTextEntry = true
        //password2TextField.isSecureTextEntry = true
        
        
        nameTextField.placeholder="Nome"
        emailTextField.placeholder="Email"
        password1TextField.placeholder="Senha"
        password2TextField.placeholder="Corfirmar Senha"
        
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.layer.borderWidth = 1
        password1TextField.layer.borderColor = UIColor.lightGray.cgColor
        password1TextField.layer.borderWidth = 1
        password2TextField.layer.borderColor = UIColor.lightGray.cgColor
        password2TextField.layer.borderWidth = 1
        
        self.nameTextField.delegate = self
        self.emailTextField.delegate = self
        self.password1TextField.delegate = self
        self.password2TextField.delegate = self
    }
    
    
    @IBAction func tappedCadastrarButton(_ sender: UIButton) {
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
        
        //Confere apenas no campo de confirmar para que nao fique vermelho antes que o segundo fique preenchido
        if textField == password2TextField && password1TextField.text != password2TextField.text {
            password1TextField.layer.borderColor = UIColor.red.cgColor
            password1TextField.layer.borderWidth=2
            password2TextField.layer.borderColor = UIColor.red.cgColor
            password2TextField.layer.borderWidth=2
        }
        
        if nameTextField.text?.isEmpty == false && emailTextField.text?.isEmpty == false && password1TextField.text?.isEmpty == false &&  password1TextField.text == password2TextField.text {
            cadastrarButton.isEnabled = true
        } else {
            cadastrarButton.isEnabled = false
        }
    }
}
