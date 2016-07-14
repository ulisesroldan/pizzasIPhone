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
        
        lblTamano.text=sTamano
        lblMasa.text=sMasa
        lblQueso.text=sQueso
        lblIngred.text=sIngredientes
        lblExtras.text=sExtras
    }
    
    override func viewDidAppear(animated: Bool) {
        lblTamano.text=sTamano
        lblMasa.text=sMasa
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        /*if let pizzaConfig = pizza {
            //var textoIngredientes:String = ""
            for ingredientes in pizzaConfig.ingredientes! {
                if (ingredientes != "Ninguno") {
                    sIngredientes += "\(ingredientes) , "
                }
            }
            for extras in pizzaConfig.extras! {
                if (extras != "Ninguno") {
                    sExtras += "\(extras) , "
                }
            }
            //sTamano = pizzaConfig.tamano!
            //sMasa = pizzaConfig.masa!
            //sQueso = pizzaConfig.queso!
        }
       */
        
        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject?) {
        if segue.identifier == "vistaTamanoS" {
            
            let vTamanoP=segue.destinationViewController as! vistaTamano
            //vTamanoP.sTamanoT=lblTamano.text!
            vTamanoP.sTamanoT=sTamano
            vTamanoP.sMasaT=sMasa
            vTamanoP.sQuesoT=sQueso
            
        } else if segue.identifier == "fromVistaConfirma2Masa" {
            let vMasaP=segue.destinationViewController as! vistaMasa
            vMasaP.sMasaT=lblMasa.text!
            vMasaP.sTamanoT=sTamano
            vMasaP.sQuesoT=sQueso
            
        }
        else if segue.identifier == "vistaMasaS" {
            let vMasaP=segue.destinationViewController as! vistaMasa
            vMasaP.sMasaT=lblMasa.text!
            vMasaP.sTamanoT=sTamano
            vMasaP.sQuesoT=sQueso
        }
        else if segue.identifier == "vistaQuesoS" {
            let vMasaP=segue.destinationViewController as! vistaQueso
            vMasaP.sMasaT=lblMasa.text!
            vMasaP.sTamanoT=sTamano
            vMasaP.sQuesoT=sQueso
        }

        else if segue.identifier == "fromVistaConfirma2Inicio" {
            
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
