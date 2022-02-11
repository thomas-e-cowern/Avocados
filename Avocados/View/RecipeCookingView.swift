//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/11/22.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // MARK:  Properties
    var recipe: Recipe
    
    // MARK:  Body
    var body: some View {
        HStack (alignment: .center, spacing: 12) {
            HStack (alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            } // End of HStack
            HStack (alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            } // End of HStack
            HStack (alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            } // End of HStack
        } // End of HStack
        .font(.footnote)
        .padding(.bottom, 12)
    }
}

// MARK:  Preview
struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
