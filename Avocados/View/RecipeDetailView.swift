//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/11/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    // MARK:  Properties
    
    var recipe: Recipe
    
    // MARK:  Body
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group {
                    
                    // Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // Rating
                    RecipeRatingView(recipe: recipe)
                    
                    // Cooking
                    RecipeCookingView(recipe: recipe)
                    
                    // ingredients
                    
                    
                    // instructions
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            } // End of VStack
        } // End of Scrollview
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK:  Preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
