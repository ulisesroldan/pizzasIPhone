//
//  RootViewController.swift
//  Pizza_N2
//
//  Created by Francisco Ulises Roldan Trejo on 12/07/16.
//  Copyright © 2016 Francisco Ulises Roldan Trejo. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIPageViewControllerDelegate {

    let ingredientes = ColeccionDeIngredientes()
    var pageViewController: UIPageViewController?
    
    @IBAction func fromVistaConfirma2Inicio(segue:UIStoryboardSegue!) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

