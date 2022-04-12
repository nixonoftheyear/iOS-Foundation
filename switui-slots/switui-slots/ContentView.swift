//
//  ContentView.swift
//  switui-slots
//
//  Created by Nicola Sivalli on 06/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 1000
    @State private var slot1 = "apple"
    @State private var slot2 = "cherry"
    @State private var slot3 = "star"
    
    private var fruits = ["apple", "cherry", "star"]
    
    private func spin() {
        let slot1Rand = Int.random(in: 0...2)
        let slot2Rand = Int.random(in: 0...2)
        let slot3Rand = Int.random(in: 0...2)
        
        slot1 = fruits[slot1Rand]
        slot2 = fruits[slot2Rand]
        slot3 = fruits[slot3Rand]
        
        if slot1 == slot2 && slot2 == slot3 {
            score += 15
        } else {
            score -= 5
        }
    }
    
    var body: some View {
        VStack {
            Text("SwiftUI SLOTS")
                .font(.largeTitle)
            Spacer()
            Text("Credits: \(score)")
                .font(.title2)
            Spacer()
            HStack {
                Image(slot1).resizable().aspectRatio(contentMode: .fit)
                Image(slot2).resizable().scaledToFit()
                Image(slot3).resizable().scaledToFit()
            }
            Spacer()
            Button("Spin") {
                spin()
            }.padding([.bottom, .top], 10.0)
                .padding([.leading, .trailing], 50.0)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
