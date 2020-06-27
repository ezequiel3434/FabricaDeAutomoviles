//
//  ViewControllerSegundaPantalla.swift
//  FabricaDeAutomoviles
//
//  Created by Ezequiel Parada Beltran on 26/06/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var tipoAutomovil:Int?
//    var automovilNormal: Automovil?
//    var automovilElectrico: AutomovilElectrico?
    var automovil: Automovil?
    var estado: Bool = false
   
    var acelerado: Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAutomovil {
        case 0:
            automovil = Automovil()
            imageView.image = UIImage(named: "automovil")
            label.text = "Se creo el auto normal correctamente"
            
            
        case 1:
            
           
            automovil = AutomovilElectrico()
            imageView.image = UIImage(named: "autoelectrico")
            label.text = "Se creo el auto eléctrico correctamente"
        default:
            print("Error")
        }
        

        // Do any additional setup after loading the view.
    }
    @IBAction func mostrarInformacion(_ sender: Any) {
        let info = """
                    Color: \(automovil!.colour)
                    Ruedas: \(automovil!.whilesNumber)
                    Precio: \(automovil!.price)
                    """
        if ((automovil is AutomovilElectrico)){
            print("soy electric")
            label.text = """
                \(info)
                Carga de bateria: \((automovil as! AutomovilElectrico).porcentajeBateria)
            """
        }else {
            label.text = info
        }
    }
    
    @IBAction func encender(_ sender: Any) {
        if estado == false {
            estado = automovil!.turnOn()
            label.text = "Automovil encendido"
        } else {
            label.text = "El automovil ya se encuentra encendido"
        }
    }
    @IBAction func apagar(_ sender: Any) {
        if estado {
            estado = automovil!.turnOff()
            label.text = "Automóvil apagado"
        } else {
            label.text = "El automovil ya se encuentra apagado"
        }
    }
    @IBAction func acelerar(_ sender: Any) {
        if estado {
            
            label.text = automovil!.acelerar()
        } else {
            label.text = "El automovil debe encenderse antes de acelerarse"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
