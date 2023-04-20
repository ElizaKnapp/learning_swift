//
//  other_view.swift
//  binding_vars
//
//  Created by Eliza Knapp on 4/17/23.
//

import SwiftUI

struct other_view: View {
    @Binding var lightIsOn: Bool
        var body: some View {
            VStack(spacing: 20.0) {
                Button(action: {
                    lightIsOn.toggle()
                }, label: {
                    Image(systemName: !lightIsOn ? "bolt.circle.fill" : "bolt.slash.circle.fill" )
                        .font(.system(size: 60))
                })
                Text("Turn the light bulb \(!lightIsOn ? "on" : "off")")
                    .fontWeight(.bold)
            }
            .navigationTitle("Control Room")
        }
}

struct other_view_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            other_view(lightIsOn: .constant(true))

        }
    }
}
