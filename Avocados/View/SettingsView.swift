//
//  SettingsView.swift
//  Avocados
//
//  Created by Thomas Cowern New on 2/8/22.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK:  Properties
    @State private var enableNotification: Bool = true
    @State private var backgroudRefresh: Bool = false
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            
            // MARK:  Header
            
            
            VStack (alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            } // End of VStack
            .padding()
            
            Form {
                // MARK:  Section 1
                Section (header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable Nottifications")
                    })
                    Toggle(isOn: $backgroudRefresh) {
                        Text("Enable Background Refresh")
                    }
                } // End of Section
                
                // MARK:  Section 2
                Section (header: Text("Application Credits")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatability").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone and iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Thomas Cowern")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(Color.gray)
                            Spacer()
                            Text("Enable notifications to see additional information")
                        }
                    }
                    
                }
            }
            
        } // End of top Stack
        .frame(maxWidth: 640)
    } // Eod of Body
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
