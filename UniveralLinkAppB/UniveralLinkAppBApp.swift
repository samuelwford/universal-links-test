//
//  UniveralLinkAppBApp.swift
//  UniveralLinkAppB
//
//  Created by Samuel Ford on 11/9/20.
//

import SwiftUI

@main
struct UniveralLinkAppBApp: App {
    @State var card: Card = .none
    
    var body: some Scene {
        WindowGroup {
            ContentView(title: "App B", card: card)
                .onOpenURL { url in
                    card = .link(path: url.path)
                }
                .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { activity in
                    guard let url = activity.webpageURL else { return }
                    card = .tag(id: url.lastPathComponent)
                }
        }
    }
}
