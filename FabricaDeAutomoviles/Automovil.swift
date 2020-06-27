//
//  Automovil.swift
//  FabricaDeAutomoviles
//
//  Created by Ezequiel Parada Beltran on 26/06/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import Foundation

class Automovil {
    var colour = "neutro"
    var whilesNumber = 4
    var price = 5000
    
    func turnOn() -> Bool {
        return true
    }
    
    func turnOff() -> Bool {
        return false
    }
    func acelerar() -> String {
        return "Aceleración exitosa"
    }
}
