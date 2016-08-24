//
//  vistaExtras.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 24/08/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaExtras: UIViewController {
    
    var sws: [UISwitch!] = []
    var oneTrue: Bool = false
    
    var sMasaT : String = ""
    var sTamanoT : String = ""
    var sQuesoT : String = ""
    var sExtrasT:String=""
    var sExtrasArrT = [String : Bool]()
    var sIngredientesT:String=""
    var sIngredientesArrT = [String : Bool]()
    
    var ingredExtrasCount : Int = 0

    @IBOutlet weak var btnExtraqueso: UISwitch!
    @IBOutlet weak var btnCanelones: UISwitch!
    @IBOutlet weak var btnRefresco: UISwitch!
    
    override func viewWillAppear(animated: Bool) {
        sws = [btnExtraqueso, btnCanelones, btnRefresco]
        
        if (sExtrasT != "") {
            asignaValoresSW()
        }
        
    }
    
    func asignaValoresSW() -> Bool {
        btnExtraqueso.setOn(sExtrasArrT["btnExtraqueso"]!, animated: false)
        btnCanelones.setOn(sExtrasArrT["btnCanelones"]!, animated: false)
        btnRefresco.setOn(sExtrasArrT["btnRefresco"]!, animated: false)
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vConfirma = segue.destinationViewController as! vistaConfirma
        vConfirma.sMasa=sMasaT
        vConfirma.sTamano=sTamanoT
        vConfirma.sQueso=sQuesoT
        
        
        vConfirma.sIngredientes=sIngredientesT
        vConfirma.sIngredientesArr=sIngredientesArrT
        actualizaValoresSW()
        vConfirma.sExtras=sExtrasT
        vConfirma.sExtrasArr=sExtrasArrT
    }
    
    func actualizaValoresSW() -> Bool {
        sExtrasArrT["btnExtraqueso"] = btnExtraqueso.on
        sExtrasArrT["btnCanelones"] = btnCanelones.on
        sExtrasArrT["btnRefresco"] = btnRefresco.on
        sExtrasT = ""
        if btnExtraqueso.on {
            sExtrasT = "Extraqueso"
            ingredExtrasCount += 1
        }
        
        
        if btnCanelones.on {
            if sExtrasT != "" {sExtrasT = sExtrasT + ", "}
            sExtrasT = sExtrasT + "Canelones"
            ingredExtrasCount += 1
            
        }
        if btnRefresco.on {
            if sExtrasT != "" {sExtrasT = sExtrasT + ", "}
            sExtrasT = sExtrasT + "Refresco"
            ingredExtrasCount += 1
        }
        return true
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
