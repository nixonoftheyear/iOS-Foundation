//
//  ContentView.swift
//  war-challenge
//
//  Created by Nicola Sivalli on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore+=1
                    }else if playerRand < cpuRand {
                        cpuScore+=1
                    }
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 20.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 20.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                }
                Spacer()
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
