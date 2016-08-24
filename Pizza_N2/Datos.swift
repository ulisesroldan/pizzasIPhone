//
//  Datos.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 22/08/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDeIngredientes {
    
    var switchesVals = [String : Bool]()
    
    init() {
    switchesVals = ["btnSWJamon" : false, "btnSWPepperoni" : false, "btnSWPavo" : false, "btnSWSalchicha" : false, "btnSWAceituna" : false, "btnSWCebolla" : false, "btnSWPimiento" : false, "btnSWPina" : false, "btnSWAnchoa" : false]
    }
    
    func obtenEstadoSW(nombreSW: String, valorSW: Bool ) -> Bool {
        var valorEstadoSW: Bool = false
        
        for (btnNombre, btnValor) in switchesVals {
            if btnNombre == nombreSW {
               valorEstadoSW = btnValor
            }
        }
        return valorEstadoSW
    }
    func asignaEstadoSW(nombreSW: String, valorSW: Bool ) -> Bool {
        var valorEstadoSW: Bool = valorSW
        
        switchesVals[nombreSW] = valorEstadoSW
        return true
    }
}
