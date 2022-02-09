//
//  ContentView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                
                // MARK: Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .top, spacing: 0) {
                        HeaderView()
                    }
                }
                
                // MARK: Footer
                VStack (alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
