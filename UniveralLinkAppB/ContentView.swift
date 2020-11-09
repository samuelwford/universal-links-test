//
//  ContentView.swift
//  UniveralLinkAppB
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

struct ContentView: View {
    var tag: Tag?
    
    var body: some View {
        Text("App B")
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
