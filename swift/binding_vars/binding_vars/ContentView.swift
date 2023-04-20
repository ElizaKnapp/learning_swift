//
//  ContentView.swift
//  binding_vars
//
//  Created by Eliza Knapp on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = true
        var body: some View {
            NavigationView {
                VStack(spacing: 20.0) {
                    Image(systemName: "lightbulb.fill")
                        .font(.system(size: 60))
                        .foregroundColor(isOn ? .yellow : .gray)
                        .navigationTitle(Text("LightBulb"))
                    NavigationLink(destination: other_view(lightIsOn: $isOn)) {
                        Text("Control Panel")
                            .fontWeight(.bold)
                    }
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
