//
//  ContentView.swift
//  uitest
//
//  Created by Nicola Sivalli on 04/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                VStack {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                        
                    
                    Text("Toronto")
                        .font(.caption)
                        .padding(.bottom)
                        
                }
                .foregroundColor(Color.white)
                .background(Color.black)
                .cornerRadius(10.0)
                .opacity(0.8)
            }
            .padding()
            
            
            ZStack{
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                VStack {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                        
                    
                    Text("London")
                        .font(.caption)
                        .padding(.bottom)
                        
                }
                .foregroundColor(Color.white)
                .background(Color.black)
                .cornerRadius(10.0)
                .opacity(0.8)
                
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
