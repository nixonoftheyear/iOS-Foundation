//
//  Pizza.swift
//  M2L7-mvvm-basics
//
//  Created by Nicola Sivalli on 08/04/22.
//

import Foundation

//Inizialmente era una struct ma per cambiare gli id con un loop bisogna convertirla in class (vedi lezione struc/class -> riferimento/valore)
class Pizza: Identifiable, Decodable {
    // Convertendo l'id in Optional ora di default è nil e non abbiamo problemi durante la decode dei dati in questo modello
    var id:UUID?
    var name:String
    var image:String
    var toppings:[String]
}
