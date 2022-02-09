//
//  AvocadosView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/8/22.
//

import SwiftUI

struct AvocadosView: View {
    
    // MARK:  Properties
    @State private var pulseItAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulseItAnimation ? 1 : 0.5)
                .opacity(self.pulseItAnimation ? 1 : 0.5)
                .animation(Animation.easeInOut(duration: 1.5), value: pulseItAnimation)
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
                     Creamy, green, and full of nutrients!  Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
                     """)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulseItAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
    }
}
