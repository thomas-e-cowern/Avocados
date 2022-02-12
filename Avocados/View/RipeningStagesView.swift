//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/8/22.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK:  Properties
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack (alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                      RipeningView(ripeStage: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
