//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode
//
//  Created by Gabriel Luz Romano on 16/05/23.
//

import UIKit

// Como criar/configurar class em ViewCode
// 1 passo - Criar Screen (Ex: LoginViewController -> Login Screen, RegisterViewController -> RegisterScreen)
// 2 passo - Metodo construtor (init)
// 3 passo - Criar elemento como lazy var (NÃO SE ESQUEÇA DO translatesAutoresizingMaskIntoConstraints)
// 4 passo - adicionar elemento
// 5 passo - configurar constraints
// 6 passo - chamar view na loadView
// 7 passo - Correr para o abraço!!!

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cyan
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(loginLabel)
    }
    
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        
        ])
    }

}
