//
//  Style.swift
//  FontAwesomeSwiftUI
//
//  Created by khoa on 18/10/2020.
//

import Foundation

public enum FontStyle: String, CaseIterable {
    case brand = "FontAwesome6Brands-Regular"
    case regular = "FontAwesome6Free-Regular"
    case solid = "FontAwesome6Free-Solid"

    public var familyName: String {
        switch self {
        case .brand:
            return "Font Awesome 6 Brands"
        case .regular, .solid:
            return "Font Awesome 6 Free"
        }
    }
}

extension FontStyle {
    static func fromName(_ styleName: String) -> Self? {
        switch styleName {
        case "fa-solid":
            return .solid
        case "fa-regular":
            return .regular
        case "fa-brand":
            return .brand
        default:
            return nil
        }
    }
}
