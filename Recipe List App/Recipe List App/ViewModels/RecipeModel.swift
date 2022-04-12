//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Nicola Sivalli on 11/04/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
}
