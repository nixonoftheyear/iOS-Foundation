//
//  ContentView.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 12/04/22.
//

import SwiftUI

struct QuoteListView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    ForEach(model.quotes) { q in
                        
                        NavigationLink(
                            destination: QuoteDetailView(quote: q),
                            label: {
                                Card(quote: q)
                        })
                    }
                }
            }.navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
