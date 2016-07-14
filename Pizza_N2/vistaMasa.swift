//
//  vistaMasa.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 13/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//  dd

import UIKit

class vistaMasa: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{

    var pizza = Pizza?()
    
    var sMasaT:String=""
    
    @IBOutlet weak var masaSelect: UIPickerView!
    
    @IBAction func fromVistaConfirma2Masa(segue:UIStoryboardSegue!) {
        
    }
    
    var pickerDataSource = ["Delgada", "Crujiente", "Gruesa"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.masaSelect.dataSource = self
        self.masaSelect.delegate = self
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
            sMasaT = pickerDataSource[0]
        }
        else if(row == 1)
        {
            sMasaT = pickerDataSource[1]
        }
        else
        {
            sMasaT = pickerDataSource[2]
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        var valorLoc:Int
        //lblMasa.text=sTamanoT
        switch sMasaT {
        case "Delgada" :
            valorLoc = 0
        case "Crujiente" :
            valorLoc = 1
        default :
            valorLoc = 2
        }
        ajustaMasa(valorLoc)
    }
    func ajustaMasa(valorLoc: Int) -> Bool {
        masaSelect.selectRow(valorLoc,inComponent: 0,animated: false)
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        //let vConfirma = segue.destinationViewController as! vistaConfirma
        //vConfirma.sMasa=sMasaT
        pizza?.masa = sMasaT
        /*}
         else{
         print(segue.description)
         
         }*/
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
