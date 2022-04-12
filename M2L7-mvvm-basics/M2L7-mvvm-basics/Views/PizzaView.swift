//
//  ContentView.swift
//  M2L7-mvvm-basics
//
//  Created by Nicola Sivalli on 08/04/22.
//

import SwiftUI

struct PizzaView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach (model.pizzas) { pizza in

                        NavigationLink(destination: PizzaDetailView(pizza: pizza), label: {
                            HStack {
                                Image(pizza.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(5)
                                    .clipped()
                                    
                                
                                VStack(alignment: .leading) {
                                    Text(pizza.name)
                                        .font(.headline)
                                    HStack {
                                        // Use ForEach for the toppings
                                        ForEach (pizza.toppings, id: \.self) { topping in
                                            Text(topping)
                                        }
                                    }
                                    .font(.caption)
                                }
                            }
                        })
                    }
                }
            }.navigationBarTitle("All Pizzas")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView()
    }
}
