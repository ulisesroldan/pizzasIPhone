//
//  vistaQueso.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 14/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class vistaQueso: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    var sMasaT : String = ""
    var sTamanoT : String = ""
    var sQuesoT : String = ""
    var STamanoLoc : String = ""
    var sIngredientesT:String=""
    var sIngredientesArrT = [String : Bool]()
    var sExtrasT:String=""
    var sExtrasArrT = [String : Bool]()

    @IBOutlet weak var quesoSelect: UIPickerView!
    
    
    var pickerDataSource = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.quesoSelect.dataSource = self
        self.quesoSelect.delegate = self
        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            sQuesoT = pickerDataSource[0]
        }
        else if(row == 1)
        {
            sQuesoT = pickerDataSource[1]
        }
        else if(row == 2)
        {
            sQuesoT = pickerDataSource[2]
        }

        else
        {
            sQuesoT = pickerDataSource[3]
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        var valorLoc:Int

        STamanoLoc = sTamanoT
        
        switch sQuesoT {
        case "Mozarela" :
            valorLoc = 0
        case "Cheddar" :
            valorLoc = 1
        case "Parmesano" :
            valorLoc = 2
        default :
            valorLoc = 3
        }
        ajustaQueso(valorLoc)
    }
    func ajustaQueso(valorLoc: Int) -> Bool {
        quesoSelect.selectRow(valorLoc,inComponent: 0,animated: false)
        sQuesoT=pickerDataSource[valorLoc]
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let vConfirma = segue.destinationViewController as! vistaConfirma
        vConfirma.sMasa=sMasaT
        vConfirma.sTamano=sTamanoT
        vConfirma.sQueso=sQuesoT
        vConfirma.sIngredientes = sIngredientesT
        vConfirma.sIngredientesArr = sIngredientesArrT
        vConfirma.sExtras = sExtrasT
        vConfirma.sExtrasArr = sExtrasArrT
}

}
