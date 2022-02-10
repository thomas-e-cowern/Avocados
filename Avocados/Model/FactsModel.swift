//
//  FactsModel.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/10/22.
//

import SwiftUI

// MARK:  Fact Model

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
