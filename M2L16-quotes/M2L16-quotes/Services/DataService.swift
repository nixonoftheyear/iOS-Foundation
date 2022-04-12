//
//  DataService.swift
//  M2L16-quotes
//
//  Created by Nicola Sivalli on 12/04/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)

        do {
            let data = try Data(contentsOf: url)

            let decoder = JSONDecoder()

            do {
                var quotes = try decoder.decode([Quote].self, from: data)
                
                for index in 0..<quotes.count {
                    quotes[index].id = UUID()
                }

                return quotes
                
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
}
