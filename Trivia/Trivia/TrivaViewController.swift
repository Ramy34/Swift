//
//  TrivaViewController.swift
//  Trivia
//
//  Created by 2020-2 on 23/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class TrivaViewController: UIViewController {
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var buttonCheck: UIButton!
    var answer = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Check(_ sender: UIButton) {
        if switch1.isOn && switch2.isOn && !switch3.isOn {
            answer = true
        }else{
            answer = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let respuestaVC = segue.destination as? TriviaAnswerViewController
        respuestaVC?.respuesta = answer.self
    }
    
}
