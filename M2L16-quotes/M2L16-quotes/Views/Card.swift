//
//  Card.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 13/04/22.
//

import SwiftUI

struct Card: View {
    
    var quote:Quote
    
    var body: some View {
        ZStack {
            // Background Image
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .cornerRadius(15)
            
            // Text Stack
            VStack(alignment: .leading, spacing: 10.0) {
                
                // Quote if there is at least 1
                if quote.quotes.count > 0 {
                    Text(quote.quotes[0])
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                // Name
                Text("- " + quote.author)
            }
//            .padding([.top, .leading], 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
            
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(quote: Quote.testData())
    }
}
