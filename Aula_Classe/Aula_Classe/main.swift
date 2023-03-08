//
//  main.swift
//  Aula_Classe
//
//  Created by Gabriel Luz Romano on 07/03/23.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

class Animal {
    
    var numeroPatas: Int = 4
    var classe: String = "Mamifero"
    var altura: Double = 1.5 //metros
    var peso: Double = 100.0 //Kg
    var eVertebrado: Bool = true
    
    func correr() {
        print("Está correndo!")
    }
    
    func caçar() {
        print("Está caçando!")
    }
    
}

class computador {
    
    var marca: String = "Apple"
    var chip: String = "m2"
    var cor: String = "prata"
    var memoriaRam: Double = 8.0 //Gb
    var ano: Int = 2022
    
    func ligar() {
        print("Está Ligado")
    }
    
    func desligar() {
        print("Está desligado!")
    }
    
}

class aula {
    
    var prof: String = "Caio"
    var assunto: String = "Classes"
    var turmaNumero: Int = 350
    var data: String = "07/03/2023"
    var numeroAlunos: Int = 23
    
    func compartilharTela() {
        print("Compartilhando!")
    }
    
    func levantarMao() {
        print("Mão Levantada")
    }
    
}

var macbook:computador = computador()

print(macbook.ano)
