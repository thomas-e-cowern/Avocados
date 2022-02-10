//
//  DishesView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/10/22.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack () {
            Image(systemName: "heart.circle")
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 200))
    }
}
