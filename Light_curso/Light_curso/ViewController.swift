//
//  ViewController.swift
//  Light_curso
//
//  Created by 2020-2 on 20/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        //print(lightOn)
        updateUI()
    }
    
    func updateUI(){
         view.backgroundColor = lightOn ? .white : .black
        lightOn ? lightButton.setTitle("Off", for: .normal) : lightButton.setTitle("On", for: .normal)
        
//        if lightOn{
//            view.backgroundColor = .white
//            lightButton.setTitle("Off", for: .normal)
//        }else{
//            view.backgroundColor = .black
//            lightButton.setTitle("On", for: .normal)
//        }
    }
}

