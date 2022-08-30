//
//  SwiftUIView.swift
//  
//
//  Created by alanb on 2022/08/30.
//

import SwiftUI

struct FaIcon: View {
    init(
        _ className: String,
        size: CGFloat
    ) {
        self.className = className
        self.size = size
    }

    var body: some View {
        let words = className.split(separator: " ", maxSplits: 2)
        let style = words.count == 2
            ? (FontStyle.fromName(String(words[0])) ?? .solid)
            : .solid
        let iconName = String(words.last ?? "")

        Text(iconName)
            .font(.awesome(style: style, size: size))
    }

    private let className: String
    private let size: CGFloat
}
