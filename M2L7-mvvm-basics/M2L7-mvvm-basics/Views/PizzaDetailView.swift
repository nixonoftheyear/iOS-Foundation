//
//  PizzaDetailView.swift
//  M2L7-mvvm-basics-and-json
//
//  Created by Nicola Sivalli on 12/04/22.
//

import SwiftUI

struct PizzaDetailView: View {
    var pizza:Pizza
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(pizza.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300, alignment: .center)
                    .clipped()
                VStack(alignment: .leading) {
                    Text("Ingrendients")
                        .font(.headline)
                    ForEach(pizza.toppings, id: \.self) { topping in
                        Text(topping)
                    }
                }
                .padding(.horizontal)
            }
        }.navigationBarTitle(pizza.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PizzaModel()
        
        PizzaDetailView(pizza: model.pizzas[0])
    }
}
