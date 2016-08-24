//
//  vistaTamano.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 12/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaTamano: UIViewController {

    let tamanos=["Chica", "Mediana", "Grande"]
    
    @IBOutlet weak var lblTama: UILabel!
    
    @IBOutlet weak var tamChica: UIImageView!
    
    @IBOutlet weak var tamMediana: UIImageView!
    
    @IBOutlet weak var tamGrande: UIImageView!
    
    @IBOutlet weak var btnSliderTamaOut: UISlider!
    @IBAction func btnSliderTama(sender: AnyObject) {

        let valor : Float = sender.value
        ajustaTamano(valor)
    }
    

    var sTamanoT:String=""
    var sMasaT:String=""
    var sQuesoT:String=""
    var sIngredientesT:String=""
    var sIngredientesArrT = [String : Bool]()
    var sExtrasT:String=""
    var sExtrasArrT = [String : Bool]()

    
    override func viewWillAppear(animated: Bool) {
        var valorLoc:Float
        lblTama.text=sTamanoT
        switch sTamanoT {
            case "Chica" :
                 valorLoc = 0.0
            case "Grande" :
                valorLoc = 2.0
            default :
                valorLoc = 1.0
        }
        ajustaTamano(valorLoc)
    }

    
    func ajustaTamano(valorT:Float) -> Bool{
        if (valorT >= 0.0) && (valorT <= 0.66) {
            lblTama.text = "Chica"
            tamChica.hidden = false
            tamMediana.hidden = true
            tamGrande.hidden = true
            btnSliderTamaOut.value=0.0
        }
        else if (valorT >= 1.33) && (valorT <= 2.0) {
            lblTama.text = "Grande"
            tamGrande.hidden = false
            tamChica.hidden = true
            tamMediana.hidden = true
            btnSliderTamaOut.value=2.0
        }
        else {
            lblTama.text = "Mediana"
            tamMediana.hidden = false
            tamGrande.hidden = true
            tamChica.hidden = true
            btnSliderTamaOut.value=1.0
        }
      return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let vConfirma = segue.destinationViewController as! vistaConfirma
            vConfirma.sTamano = lblTama.text!
            vConfirma.sMasa=sMasaT
            vConfirma.sQueso=sQuesoT
            vConfirma.sIngredientes = sIngredientesT
            vConfirma.sIngredientesArr = sIngredientesArrT
            vConfirma.sExtras = sExtrasT
            vConfirma.sExtrasArr = sExtrasArrT
    }
}
