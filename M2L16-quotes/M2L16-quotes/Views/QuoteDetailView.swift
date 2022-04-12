//
//  QuoteDetailView.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 12/04/22.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var quote:Quote
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            
            // Author name
            Text(quote.author)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            // Quotes
            ForEach(quote.quotes, id: \.self) { q in
                Text(q)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
    
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        
        QuoteDetailView(quote: model.quotes[0])
    }
}
