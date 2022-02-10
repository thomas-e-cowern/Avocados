//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/10/22.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK:  Properties
    var recipe: Recipe
    
    
    // MARK:  Body
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    Image(systemName: "bookmark")
                        .font(Font.title.weight(.light))
                        .foregroundColor(Color.white)
                        .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                )
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

// MARK:  Preview
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
