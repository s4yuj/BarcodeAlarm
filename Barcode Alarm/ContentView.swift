//
//  ContentView.swift
//  Barcode Alarm
//
//  Created by Sayuj Sethi on 28/11/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🫡, 🤝, 🫂, 🤖
}

struct ContentView: View {
    @State var selection: Emoji = .🤝
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))

                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.palette)
            }
            .navigationTitle("Emoji??? ")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
