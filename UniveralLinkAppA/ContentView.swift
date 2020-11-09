//
//  ContentView.swift
//  UniveralLinkAppA
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

struct ContentView: View {
    var tag: Tag?
    
    var body: some View {
        Text("App A")
        if let tag = tag {
            Text("Tag \(tag.id)")
                .padding()
        } else {
            Text(tag?.id ?? "No Tag")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
