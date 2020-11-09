//
//  UniveralLinkAppAApp.swift
//  UniveralLinkAppA
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

@main
struct UniveralLinkAppAApp: App {
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
