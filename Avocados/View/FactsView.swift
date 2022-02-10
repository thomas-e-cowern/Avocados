//
//  FactsView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/10/22.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        Text("It’s little wonder there are so many health benefits when a single serve of avocado (1/4 or 50g) boasts healthy fats, fibre, folate, niacin, vitamins C, B5, E & K, potassium and antioxidants.")
            .padding()
            .frame(width: 300, height: 135, alignment: .center)
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
