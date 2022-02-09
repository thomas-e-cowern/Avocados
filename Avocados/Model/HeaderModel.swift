//
//  HeaderModel.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/9/22.
//

import SwiftUI

// MARK: Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subHeading: String
}
