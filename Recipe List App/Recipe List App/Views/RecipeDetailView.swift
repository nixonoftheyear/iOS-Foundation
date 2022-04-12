//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Nicola Sivalli on 12/04/22.
//

import SwiftUI

struct RecipeDetailView: View {

    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Recipe Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5.0)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("• "+item)
                    }
                }
                .padding(.horizontal)
                
                //MARK: Divider
                Divider()
                
                //MARK: Recipe Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.top, .bottom], 5.0)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
