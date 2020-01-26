//
//  TriviaAnswerViewController.swift
//  Trivia
//
//  Created by 2020-2 on 24/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class TriviaAnswerViewController: UIViewController {
    @IBOutlet weak var textAnswer: UITextView!
    @IBOutlet weak var buttonImage: UIButton!
    
    var respuesta = Bool()
    var images = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images += ["succe", "Fail"]
        cambio()
    }
    
    func cambio(){
        if respuesta{
            buttonImage.setImage(UIImage(named: images[0]), for: .normal)
            textAnswer.text = "Felicidades!!"
        }else{
            buttonImage.setImage(UIImage(named: images[1]), for: .normal)
            textAnswer.text = "Suerte para la proxima!"
        }
    }
    
    
}
