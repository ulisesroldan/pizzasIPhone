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
    
    @IBOutlet weak var lblTamano: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        lblTamano.text=sTamano
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject?) {
        if segue.identifier == "vistaTamanoS" {
            
            let vTamanoP=segue.destinationViewController as! vistaTamano
            vTamanoP.sTamanoT=lblTamano.text!
            
        } else if segue.identifier == "fromVistaConfirma2Inicio" {
            
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
