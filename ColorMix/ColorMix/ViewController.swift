//
//  ViewController.swift
//  ColorMix
//
//  Created by 2020-2 on 21/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Para acceder a las propiedades
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var reset: UIButton!
    
    //Función al momento de lanzar la aplicación
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpColorView()
        update()
    }
    
    //Funcón que da forma al colorView y al botón reset
    func setUpColorView(){
        reset.setTitle("Reset", for: .normal)
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        redSlider.tintColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        greenSlider.tintColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
        blueSlider.tintColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
    }
    
    //Función que actualiza el color del colorView
    func update(){
        //Definimos variables para generar los cambios de color
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        
        //Condicionales para saber el estado de los switches
        if redSwitch.isOn { //Si el switch rojo está habilitado...
            red = CGFloat(redSlider.value) //La variable rojo obtiene el valor del slider rojo
            redSlider.isEnabled = true //Mantiene o habilita al slider rojo
        }else{
            redSlider.isEnabled = false //Deshabilita el slider rojo
        }
        
        if greenSwitch.isOn { //Si el switch verde está habilitado...
            green = CGFloat(greenSlider.value) //La variable verde obtiene el valor del slider verde
            greenSlider.isEnabled = true //La variable rojo obtiene el valor del slider verde
        }else{
            greenSlider.isEnabled = false //Deshabilita el slider verde
        }
        
        if blueSwitch.isOn { //Si el switch azul está habilitado...
            blue = CGFloat(blueSlider.value) //La variable azul obtiene el valor del slider azul
            blueSlider.isEnabled = true //La variable rojo obtiene el valor del slider azul
        }else{
            blueSlider.isEnabled = false //Deshabilita el slider azul
        }
        
        //Se cambia el color de los sliders
        redSlider.tintColor = UIColor(red: red, green: 0, blue: 0, alpha: 1)
        greenSlider.tintColor = UIColor(red: 0, green: green, blue: 0, alpha: 1)
        blueSlider.tintColor = UIColor(red: 0, green: 0, blue: blue, alpha: 1)
        
        //Se cambia el color de los switches
        redSwitch.onTintColor = UIColor(red: red, green: 0, blue: 0, alpha: 1)
        greenSwitch.onTintColor = UIColor(red: 0, green: green, blue: 0, alpha: 1)
        blueSwitch.onTintColor = UIColor(red: 0, green: 0, blue: blue, alpha: 1)
        
        //Se cambia el color del fondo
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        //Se cambia el color del texto del botón reset
        reset.tintColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    //Acción que realizan los sliders
    @IBAction func sliderAction(_ sender: Any) {
        update()
    }
    
    //Acción que realizan los Switches
    @IBAction func switchAction(_ sender: Any) {
        update()
    }
    
    //Acción que ejecuta el reset
    @IBAction func resetButton(_ sender: Any) {
        //Habilitamos los switches
        redSwitch.isOn = true
        greenSwitch.isOn = true
        blueSwitch.isOn = true
        
        //Cambiamos los valores de los sliders a 0
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        update()
    }
    
}

