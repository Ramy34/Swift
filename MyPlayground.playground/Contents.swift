import UIKit

print("Hola mundo!")

//Variables
var myVariable = 42
var mySecondVariable: Float = 54
var numeroVecesIgnorado = 70

//Constantes
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
        
let label: String = "El nombre de la etiqueta"
let quotation = """
Hola, me llamo Ramsés y tengo que preguntarles \(numeroVecesIgnorado)
    para recibir una respuesta
Fin de la historia
"""

var shoppingList = ["Coca cola", "Peras", "Manzanas", "Jamón", ""]
shoppingList[4] = "Botella de agua"
print(shoppingList)

var estudiantes = ["Héctor":"Ing. Computación", "Rolando":"Ing. Mecatrónica"]

estudiantes["Héctor"]
estudiantes["Fernanda"] = "Ing. Computación"
print(estudiantes)

var arregloVacio = [String]()
var diccionarioVacio = [String:Int]()

let puntuacionIndividual = [75, 43, 103, 87, 12]
var puntuacionEquipo = 0

for score in puntuacionIndividual{
    if score > 50{
        puntuacionEquipo += 1
    }
    else{
        puntuacionEquipo += 3
    }
}

let opcionalString: String? = "Hola"

if let name = opcionalString {
    print("\(name)")
}
