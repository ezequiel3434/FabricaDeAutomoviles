//
//  File.swift
//  FabricaDeAutomoviles
//
//  Created by Ezequiel Parada Beltran on 26/06/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import Foundation

class AutomovilElectrico: Automovil {
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcentajeBateria = 100
        return "Carga Exitosa"
    }
}
