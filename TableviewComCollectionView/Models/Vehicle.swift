//
//  Vehicle.swift
//  TableviewComCollectionView
//
//  Created by Gabriel Luz Romano on 25/04/23.
//

import Foundation

import Foundation

struct Vehicle {
    var name: String
    var vehicleList: [String]
}

var vehicleList: [Vehicle] = [
    Vehicle(name: "Carro", vehicleList: ["car1","car2","car3","car4","car5","car6"]),
    Vehicle(name: "Motocicleta", vehicleList: ["motorcycle1","motorcycle2"]),
    Vehicle(name: "Avião", vehicleList: ["plane1","plane2","plane3"]),
    Vehicle(name: "Barco", vehicleList: ["boat1"]),
]
