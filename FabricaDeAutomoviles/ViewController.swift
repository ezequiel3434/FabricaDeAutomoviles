//
//  ViewController.swift
//  FabricaDeAutomoviles
//
//  Created by Ezequiel Parada Beltran on 26/06/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func crearAutomovil(_ sender: Any) {
        tipoAutomovil = 0
        
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        
        tipoAutomovil = 1
        
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destino = segue.destination as? ViewControllerSegundaPantalla {
            destino.tipoAutomovil = self.tipoAutomovil
        }
    }
}

