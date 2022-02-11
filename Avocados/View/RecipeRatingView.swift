//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/11/22.
//

import SwiftUI

struct RecipeRatingView: View {
    
    // MARK:  Properties

    var recipe: Recipe

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
