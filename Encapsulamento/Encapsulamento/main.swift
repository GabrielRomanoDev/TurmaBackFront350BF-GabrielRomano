//
//  main.swift
//  Encapsulamento
//
//  Created by Gabriel Romano on 16/03/23.
//

import Foundation

// MARK: - Encapsulamento

// Private -> privado, ou seja, que não tenha acesso externo
// Public -> publico, ou seja, que tenha acesso externo

class Carro {
    
    private var modelo: String
    
    init(modelo: String) {
        self.modelo = modelo
    }
    
    public func getModelo() -> String {
        return self.modelo
    }
    
    public func setModelo(modelo: String) {
        self.modelo = modelo
    }
    
}

var meuCarro: Carro = Carro(modelo: "BMW 320i")

//print(meuCarro.getModelo())
meuCarro.setModelo(modelo: "La Ferrari")
//print(meuCarro.getModelo())


class Vendedor {
    
    private var nome: String = "Gabriel"
    private var idade: Int = 24
    private var cpf: Int = 28945692836
    private var saldoConta: Double
    
    init(saldoConta:Double){
        self.saldoConta=saldoConta
    }
    
    public func vender(quantidadedePecas: Int, tipoDePeca: String){
        if tipoDePeca=="terno"{
            if quantidadedePecas < 3{
                self.saldoConta=saldoConta+(400*Double(quantidadedePecas))
            }
            else {
                self.saldoConta=saldoConta+(350*Double(quantidadedePecas))
            }
        }
        else if tipoDePeca=="vestido"{
            self.saldoConta = saldoConta+(900*Double(quantidadedePecas))
            if quantidadedePecas > 5{
                print("Ganha Veu de Noiva")
            }
        }
        else {
            print("Tipo de peça Invalido")
            
        }
        
    }
    public func getSaldo() -> Double{
        return saldoConta
    }
}

var claudio: Vendedor = Vendedor(saldoConta: 200)

claudio.vender(quantidadedePecas: 3, tipoDePeca: "terno")
print(claudio.getSaldo())
