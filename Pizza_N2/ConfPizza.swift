//
//  ConfPizza.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 13/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class Pizza {
    
    var tamano:String?
    var masa:String?
    var queso:String?
    var ingredientes:[String]?
    var extras:[String]?
    
    init(tamano: String, masa: String,queso: String,ingredientes:[String], extras:[String]) {
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
        self.extras = extras
    }
}
