//
//  ContentView.swift
//  M2L2-list-navigationview-navigationlink
//
//  Created by Nicola Sivalli on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    let strings = ["macbook air", "ipad", "iphone", "macbook pro", "imac"]
    
    @State var array = [String]()
    
    var body: some View {
        //Il titolo della lista è corretto assegnarlo alla prima View figlia della NavigationView
        NavigationView {
            VStack {
                List(array, id: \.self){ arrayElement in
                    NavigationLink(arrayElement, destination: {
                        Text("Destination - "+arrayElement)
                    })
                }
                Button("Add element") {
                    let randIndex = Int.random(in: 0...strings.count-1)
                    array.append(strings[randIndex])
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }.navigationTitle("TitleOfMyList")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
