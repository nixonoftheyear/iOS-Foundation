//
//  Quote.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 12/04/22.
//

import Foundation

struct Quote : Identifiable, Decodable {
    
    var id:UUID?
    var author:String
    var image:String
    var quotes:[String]
    
    static func testData() -> Quote {
        let testQuote = Quote(id: UUID(), author: "Test Author", image: "ambition", quotes: ["quote 1", "quote 2"])
        
        return testQuote
    }
}
