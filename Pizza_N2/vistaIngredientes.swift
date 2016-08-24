//
//  vistaIngredientes.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 14/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaIngredientes: UIViewController {

    var sws: [UISwitch!] = []
    var oneTrue: Bool = false
    //var ingredientes = ColeccionDeIngredientes()
    
    var sMasaT : String = ""
    var sTamanoT : String = ""
    var sQuesoT : String = ""
    var sExtrasT:String=""
    var sExtrasArrT = [String : Bool]()
    var sIngredientesT:String=""
    var sIngredientesArrT = [String : Bool]()
    
    var ingredientesCount : Int = 0

    
    @IBOutlet weak var btnSWJamon: UISwitch!
    @IBOutlet weak var btnSWPepperoni: UISwitch!
    @IBOutlet weak var btnSWPavo: UISwitch!
    @IBOutlet weak var btnSWSalchicha: UISwitch!
    @IBOutlet weak var btnSWAceituna: UISwitch!
    @IBOutlet weak var btnSWCebolla: UISwitch!
    @IBOutlet weak var btnSWPimiento: UISwitch!
    @IBOutlet weak var btnSWPina: UISwitch!
    @IBOutlet weak var btnSWAnchoa: UISwitch!
    
    
    override func viewWillAppear(animated: Bool) {
        sws = [btnSWJamon, btnSWPepperoni, btnSWPavo, btnSWSalchicha, btnSWAceituna, btnSWCebolla, btnSWPimiento, btnSWPina, btnSWAnchoa]

        if (sIngredientesT != "") {
           asignaValoresSW()
        }
        
    }
    
    func asignaValoresSW() -> Bool {
        btnSWJamon.setOn(sIngredientesArrT["btnSWJamon"]!, animated: false)
        btnSWPepperoni.setOn(sIngredientesArrT["btnSWPepperoni"]!, animated: false)
        btnSWPavo.setOn(sIngredientesArrT["btnSWPavo"]!, animated: false)
        btnSWSalchicha.setOn(sIngredientesArrT["btnSWSalchicha"]!, animated: false)
        btnSWAceituna.setOn(sIngredientesArrT["btnSWAceituna"]!, animated: false)
        btnSWCebolla.setOn(sIngredientesArrT["btnSWCebolla"]!, animated: false)
        btnSWPimiento.setOn(sIngredientesArrT["btnSWPimiento"]!, animated: false)
        btnSWPina.setOn(sIngredientesArrT["btnSWPina"]!, animated: false)
        btnSWAnchoa.setOn(sIngredientesArrT["btnSWAnchoa"]!, animated: false)
        
        return true
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
    }

    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject!) -> Bool {
        actualizaValoresSW()
        if ingredientesCount < 5 {
            let alert = UIAlertController(title: "Ingredientes", message: "Seleccione al menos 5 ingredientes por favor.", preferredStyle: UIAlertControllerStyle.Alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            // show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            return false
            }
                
            else {
                return true
            }
        // by default, transition
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vConfirma = segue.destinationViewController as! vistaConfirma
        vConfirma.sMasa=sMasaT
        vConfirma.sTamano=sTamanoT
        vConfirma.sQueso=sQuesoT
        
        
        vConfirma.sIngredientes=sIngredientesT
        vConfirma.sIngredientesArr=sIngredientesArrT
        vConfirma.sExtras = sExtrasT
        vConfirma.sExtrasArr = sExtrasArrT
    }
    func actualizaValoresSW() -> Bool {
        sIngredientesArrT["btnSWJamon"] = btnSWJamon.on 
        sIngredientesArrT["btnSWPepperoni"] = btnSWPepperoni.on
        sIngredientesArrT["btnSWPavo"] = btnSWPavo.on
        sIngredientesArrT["btnSWSalchicha"] = btnSWSalchicha.on
        sIngredientesArrT["btnSWAceituna"] = btnSWAceituna.on
        sIngredientesArrT["btnSWCebolla"] = btnSWCebolla.on
        sIngredientesArrT["btnSWPimiento"] = btnSWPimiento.on
        sIngredientesArrT["btnSWPina"] = btnSWPina.on
        sIngredientesArrT["btnSWAnchoa"] = btnSWAnchoa.on
        
        sIngredientesT = ""
        
        if btnSWJamon.on {
            //sIngredientesArrT["btnSWJamon"] = btnSWJamon.on
            sIngredientesT = "Jamón"
            ingredientesCount += 1
        }
        
        
        if btnSWPepperoni.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Pepperoni"
            ingredientesCount += 1
            
        }
        if btnSWPavo.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Pavo"
            ingredientesCount += 1
        }
        if btnSWSalchicha.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Salchicha"
            ingredientesCount += 1
        }
        if btnSWAceituna.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Aceituna"
            ingredientesCount += 1
        }
        if btnSWCebolla.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Cebolla"
            ingredientesCount += 1
        }
        if btnSWPimiento.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Pimiento"
            ingredientesCount += 1
        }
        if btnSWPina.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Piña"
            ingredientesCount += 1
        }
        if btnSWAnchoa.on {
            if sIngredientesT != "" {sIngredientesT = sIngredientesT + ", "}
            sIngredientesT = sIngredientesT + "Anchoa"
            ingredientesCount += 1
        }
        return true
        
    }
    
    @IBAction func cambioConteo(sender: AnyObject) {
        
        }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
