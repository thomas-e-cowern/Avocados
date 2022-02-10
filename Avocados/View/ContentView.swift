//
//  ContentView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK:  Properties
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    
    // MARK:  Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                
                // MARK: Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK:  Dishes view
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK:  Avocado Facts
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 40) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                // MARK: Footer
                VStack (alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 8)
                Text("Everything you wanted to know about Avocados but were afraid to ask")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, 85)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factData)
    }
}
