//
//  CardView.swift
//  UniveralLinkAppB
//
//  Created by Samuel Ford on 11/10/20.
//

import Foundation
import SwiftUI

enum Card {
    case tag(id: String)
    case link(path: String)
    case none
}

struct CardView: View {
    let title: String
    let value: String
    let color: Color
    
    public var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(color)
            Text(value)
                .font(.title)
                .padding()
        }
        .cornerRadius(10.0)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke()
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(title: "Title", value: "Value", color: .blue)
                .previewLayout(.sizeThatFits)
            CardView(title: "Title", value: "Value", color: .green)
                .previewLayout(.sizeThatFits)
        }
    }
}
