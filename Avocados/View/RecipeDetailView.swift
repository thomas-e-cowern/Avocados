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
    
    @State private var pulsate: Bool = false
    
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
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack (alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    
                    // instructions
                    
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack (alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                            .frame(minHeight: 100)
                        } // End of VStack
                    } // End of ForEach
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            } // End of VStack
        } // End of Scrollview
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                    
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5), value: pulsate)
                    }) // End of Button
                        .padding(.trailing, 20)
                        .padding(.top, 24)
                    Spacer()
                } // End of VStack
            } // End of HStack
        ) // End of Overlay
        .onAppear {
            self.pulsate.toggle()
        }
    }
}

// MARK:  Preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
