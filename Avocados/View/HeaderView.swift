//
//  HeaderView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/9/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            VStack {
                Text("Avacodo Header")
                
                Text("Avocados are a powerhouse ingredient at any meal fo anyone")
            }
            .padding(.vertical, 0)
            .padding(.horizontal, 20)
            .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
