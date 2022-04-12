//
//  QuoteModel.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 12/04/22.
//

import Foundation

class QuoteModel : ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
