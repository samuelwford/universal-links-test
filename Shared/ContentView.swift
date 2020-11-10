//
//  ContentView.swift
//  UniveralLinkAppB
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

struct ContentView: View {
    let title: String
    let card: Card
    
    var body: some View {
        NavigationView {
            Group {
                switch card {
                case .tag(let id):
                    CardView(title: "NFC Tag", value: id, color: .green)
                        .padding()
                case .link(let path):
                    CardView(title: "Universal Link", value: path, color: .blue)
                        .padding()
                case .none:
                    Text("Nothing")
                }
            }
            .navigationTitle(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(title: "NFC", card: .tag(id: "123"))
                .padding()
            ContentView(title: "Link", card: .link(path: "/some/path"))
                .padding()
        }
    }
}
