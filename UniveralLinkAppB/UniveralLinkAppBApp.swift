//
//  UniveralLinkAppBApp.swift
//  UniveralLinkAppB
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

@main
struct UniveralLinkAppBApp: App {
    @State var tag: Tag?
    
    var body: some Scene {
        WindowGroup {
            ContentView(tag: tag)
                .onOpenURL { url in
                    print("universal link: \(url)")
                    tag = Tag(id: url.lastPathComponent)
                }
        }
    }
}

struct Tag {
    let id: String
}
