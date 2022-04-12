//
//  ContentView.swift
//  M2L9-optional
//
//  Created by Nicola Sivalli on 09/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var optionalArray:[String]?
    
    var body: some View {
        VStack {
            
            if optionalArray != nil {
                List(optionalArray!, id: \.self) { elem in
                    Text(elem)
                }
            } else {
                Text("Press the second button to fill optionalArray")
            }
            
            Button("SET Optional Array to") {
                optionalArray = nil
            }
            Button("SET Optional Array with values") {
                optionalArray?.append("Milk")
                optionalArray?.append("Cheese")
                optionalArray?.append("Tomato")
                optionalArray = ["valore1", "valore2", "valore3"]
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
