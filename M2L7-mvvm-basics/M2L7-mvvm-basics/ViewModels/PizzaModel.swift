//
//  PizzaModel.swift
//  M2L7-mvvm-basics
//
//  Created by Nicola Sivalli on 08/04/22.
//

import Foundation

class PizzaModel : ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        //Optional binding - if pathString is nil skip this
        if let path = pathString {
            
            //Create a url object
            let url = URL(fileURLWithPath: path)
            
            //Error handling
            do {
                //Put the code that potentially throws an error
                
                //Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let pizzasData = try decoder.decode([Pizza].self, from: data)
                    
                    //Set unique IDs for each instance
                    for p in pizzasData {
                        p.id = UUID()
                    }
                    
                    //Assign the data to the publisher property
                    self.pizzas = pizzasData
                } catch {
                    print(error)
                }

            } catch {
                //Handle the error
                print(error)
            }
        }
    }
    
    func addPineapple() {
//        pizzas.append(Pizza(name: "Pineapple", topping1: "pomodoro", topping2: "mozzarella", topping3: "ananas"))
    }
    
    func changeTopping() {
        for index in 0..<pizzas.count {
            pizzas[index].toppings[0] = "pineapple"
        }
    }
}
