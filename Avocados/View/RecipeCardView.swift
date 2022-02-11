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
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    
    // MARK:  Body
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            VStack (alignment: .leading, spacing: 12) {
                // MARK:  Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // MARK:  Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                // MARK:  Rating
                RecipeRatingView(recipe: recipe)
                
                // MARK:  Cooking
                RecipeCookingView(recipe: recipe)
                
            } // End of VStack
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

// MARK:  Preview
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
