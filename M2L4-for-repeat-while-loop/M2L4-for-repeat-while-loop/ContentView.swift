//
//  ContentView.swift
//  M2L4-for-repeat-while-loop
//
//  Created by Nicola Sivalli on 08/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var array = [Int]()
    
    var body: some View {
        VStack {
            List(array, id: \.self) { arrayElement in
                Text(String(arrayElement))
            }
            HStack {
                Button("RANDOM ADD") {
                    let randInt = Int.random(in: 1...10)
                    array.append(randInt)
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("ALL+1") {
                    for index in 0..<array.count {
                        array[index]+=1
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Button("CLEAR") {
                    array = []
                    //
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
