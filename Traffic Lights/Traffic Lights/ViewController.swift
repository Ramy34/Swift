//
//  ViewController.swift
//  Traffic Lights
//
//  Created by 2020-2 on 21/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
    @IBAction func unwindToRed(unwinSegue: UIStoryboardSegue){
        
    }*/
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
         if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}
