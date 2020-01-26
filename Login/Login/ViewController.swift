//
//  ViewController.swift
//  Login
//
//  Created by 2020-2 on 22/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUN: UIButton!
    @IBOutlet weak var forgotPW: UIButton!
    @IBOutlet weak var textFieldUN: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func forgotUserNameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotten", sender: forgotUN)
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "forgotten", sender: forgotPW)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = sender as? UIButton
        
        if sender == forgotPW{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        if sender == forgotUN{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        if sender == loginButton{
            segue.destination.navigationItem.title = textFieldUN.text
        }
    }
}

