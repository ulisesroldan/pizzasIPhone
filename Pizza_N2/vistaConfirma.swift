//
//  vistaConfirma.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 12/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaConfirma: UIViewController {

    var sTamano:String=""
    var sMasa:String=""
    var sQueso:String=""
    var sIngredientes:String=""
    var sExtras:String=""
    var sExtrasArr = [String : Bool]()
    var sIngredientesArr = [String : Bool]()
    
    var cFalta : String = "No se ha seleccionado..."
    var bFalta : Int = 0
    
    //var pizza = Pizza?()
    
    @IBAction func btnMasa(sender: AnyObject) {
        let const:Int=1
    }
    @IBOutlet weak var lblTamano: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var lblIngred: UILabel!
    @IBOutlet weak var lblExtras: UILabel!

    
    override func viewWillAppear(animated: Bool) {
        
        bFalta=0
        
        switch sTamano {
        case "" , cFalta :
            lblTamano.text = cFalta
            bFalta += 1
        default :
            lblTamano.text=sTamano
        }
        switch sMasa {
        case "" , cFalta :
            lblMasa.text = cFalta
            bFalta += 1
        default :
            lblMasa.text=sMasa
        }

        switch sQueso {
        case "" , cFalta :
            lblQueso.text = cFalta
            bFalta += 1
        default :
            lblQueso.text=sQueso
        }
        
        switch sIngredientes {
        case "" , cFalta :
            lblIngred.text = cFalta
            bFalta += 1
        default :
            lblIngred.text=sIngredientes
        }
                
        if sExtras == "" {
            lblExtras.text = "Ninguno"
        }
        else {
            lblExtras.text=sExtras
        }


    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
          
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject!) -> Bool {
    
        if identifier == "vistaTerminarS" {
        if bFalta > 0 {
            let alert = UIAlertController(title: "Falta seleccionar!", message: "Algunos elementos no has sido elegidos. Por favor elija.", preferredStyle: UIAlertControllerStyle.Alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            // show the alert
            self.presentViewController(alert, animated: true, completion: nil)
            return false
        }
            
        else {
            return true
        }
        }
        
        return true
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject?) {
        if segue.identifier == "vistaTamanoS" {
            
            let vTamanoP=segue.destinationViewController as! vistaTamano

            vTamanoP.sTamanoT=sTamano
            vTamanoP.sMasaT=sMasa
            vTamanoP.sQuesoT=sQueso
            vTamanoP.sIngredientesT=sIngredientes
            vTamanoP.sIngredientesArrT=sIngredientesArr
            vTamanoP.sExtrasT=sExtras
            vTamanoP.sExtrasArrT=sExtrasArr
            
        } else if segue.identifier == "fromVistaConfirma2Masa" {
            let vMasaP=segue.destinationViewController as! vistaMasa
            vMasaP.sMasaT=lblMasa.text!
            vMasaP.sTamanoT=sTamano
            vMasaP.sQuesoT=sQueso
            vMasaP.sIngredientesT=sIngredientes
            vMasaP.sIngredientesArrT=sIngredientesArr
            vMasaP.sExtrasT=sExtras
            vMasaP.sExtrasArrT=sExtrasArr
        }
        else if segue.identifier == "vistaMasaS" {
            let vMasaP=segue.destinationViewController as! vistaMasa
            vMasaP.sMasaT=lblMasa.text!
            vMasaP.sTamanoT=sTamano
            vMasaP.sQuesoT=sQueso
            vMasaP.sIngredientesT=sIngredientes
            vMasaP.sIngredientesArrT=sIngredientesArr
            vMasaP.sExtrasT=sExtras
            vMasaP.sExtrasArrT=sExtrasArr
        }
        else if segue.identifier == "vistaQuesoS" {
            let vQuesoP=segue.destinationViewController as! vistaQueso
            vQuesoP.sMasaT=lblMasa.text!
            vQuesoP.sTamanoT=sTamano
            vQuesoP.sQuesoT=sQueso
            vQuesoP.sIngredientesT=sIngredientes
            vQuesoP.sIngredientesArrT=sIngredientesArr
            vQuesoP.sExtrasT=sExtras
            vQuesoP.sExtrasArrT=sExtrasArr
        }
        else if segue.identifier == "vistaIngredsS" {
            let vIngredP=segue.destinationViewController as! vistaIngredientes
            vIngredP.sMasaT=lblMasa.text!
            vIngredP.sTamanoT=sTamano
            vIngredP.sQuesoT=sQueso
            vIngredP.sIngredientesT=sIngredientes
            vIngredP.sIngredientesArrT=sIngredientesArr
            vIngredP.sExtrasT=sExtras
            vIngredP.sExtrasArrT=sExtrasArr
            
        }
        else if segue.identifier == "vistaExtrasS" {
            let vExtrasP=segue.destinationViewController as! vistaExtras
            vExtrasP.sMasaT=lblMasa.text!
            vExtrasP.sTamanoT=sTamano
            vExtrasP.sQuesoT=sQueso
            vExtrasP.sIngredientesT=sIngredientes
            vExtrasP.sIngredientesArrT=sIngredientesArr
            vExtrasP.sExtrasT=sExtras
            vExtrasP.sExtrasArrT=sExtrasArr
        }

        

        //else if segue.identifier == "fromVistaConfirma2Inicio" {
        //}
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
