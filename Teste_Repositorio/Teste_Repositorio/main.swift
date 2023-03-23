//
//  main.swift
//  Teste_Repositorio
//
//  Created by Gabriel Luz Romano on 02/03/23.
//

import Foundation

//print("Hello, World!")

// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven:Int=40

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes:Int)-> Int{
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers:Int)-> Int{
    return layers*2
}

// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers:Int,elapsedMinutes:Int)-> Int{
    return preparationTimeInMinutes(layers:layers) + remainingMinutesInOven(elapsedMinutes:elapsedMinutes)
}

//print(totalTimeInMinutes(layers: 3, elapsedMinutes: 20))

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate*8)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount: Double) -> Double {
    var value = (dailyRateFrom(hourlyRate: hourlyRate)*(100-withDiscount)*0.01)
    value = budget/value
    return trunc(value)
}

print(workdaysIn(budget: 2000, hourlyRate: 80, withDiscount: 11.0))
