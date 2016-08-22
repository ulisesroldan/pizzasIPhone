//
//  vistaIngredientes.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 14/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaIngredientes: UIViewController {

    var switches: [UISwitch!] = []
    var oneTrue: Bool = false
    
    
    var sMasaT : String = ""
    var sTamanoT : String = ""
    var sQuesoT : String = ""
    //var sIngredientes[]:String
    //var sExtras[]

    
    @IBOutlet weak var btnSWJamon: UISwitch!
    @IBOutlet weak var btnSWPepperoni: UISwitch!
    @IBOutlet weak var btnSWPavo: UISwitch!
    @IBOutlet weak var btnSWSalchicha: UISwitch!
    @IBOutlet weak var btnSWAceituna: UISwitch!
    @IBOutlet weak var btnSWCebolla: UISwitch!
    @IBOutlet weak var btnSWPimiento: UISwitch!
    @IBOutlet weak var btnSWPina: UISwitch!
    @IBOutlet weak var btnSWAnchoa: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vConfirma = segue.destinationViewController as! vistaConfirma
        vConfirma.sMasa=sMasaT
        vConfirma.sTamano=sTamanoT
        vConfirma.sQueso=sQuesoT
        //vConfirma.sIngredientes=sIngredien
        //lblExtras.text=sExtras
        //pizza?.masa = sMasaT
        /*}
         else{
         print(segue.description)
         
         }*/
    }

    @IBAction func cambioConteo(sender: AnyObject) {
        for sw in switches {
            if sw != nil {
                if sw! != sender as! UISwitch {
                    sw.setOn(false, animated: false)
                } else {
                    sw.setOn(true, animated: false)
                    oneTrue = true
                }
            }
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
