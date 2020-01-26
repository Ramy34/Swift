//
//  ViewController.swift
//  Trivia
//
//  Created by 2020-2 on 23/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonWiki: UIButton!
    @IBOutlet weak var buttonPage: UIButton!
    
    let urlWiki: String = "https://es.wikipedia.org/wiki/Tokio"
    let urlPage: String = "https://www.tv-tokyo.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = sender as? UIButton
        let respuestaVC = segue.destination as? ViewControllerProfile
        
        if sender == buttonWiki{
            respuestaVC?.urlProfile = urlWiki
        }
        if sender == buttonPage{
            respuestaVC?.urlProfile = urlPage
        }
    }

}

