//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Jordan Revata Cuela on 26/10/18.
//  Copyright © 2018 Tecsup. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    @IBAction func cerrarSesionTapped(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "camaraSegue", sender: nil)
    }
    
    
}
