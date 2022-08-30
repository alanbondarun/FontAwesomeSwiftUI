//
//  FontRegister.swift
//  FontAwesomeSwiftUI
//
//  Created by khoa on 18/10/2020.
//

#if os(iOS) || os(tvOS)
import UIKit
#else
import AppKit
#endif

import Foundation

final class FontRegister {
    #if os(iOS) || os(tvOS)
    func register(fontName: String) {
        guard let url = self.url(fontName: fontName) else {
            assertionFailure("Can not locate font \(fontName)")
            return
        }

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error) {
            if let error = error {
                let description: CFString = CFErrorCopyDescription(error.takeUnretainedValue())
                assertionFailure("Can not locate font \(fontName). Reason \(description)")
            } else {
                assertionFailure("Can not register font \(fontName)")
            }
        }
    }

    #else

    func register(fontName: String) {
        
    }

    #endif

    private func url(fontName: String) -> URL? {
        #if SWIFT_PACKAGE
            return Bundle.module.url(forResource: fontName, withExtension: "otf")
        #else
            let bundle = Bundle(for: FontRegister.self)
            let resourceURL = bundle.resourceURL?.appendingPathComponent("FontAwesomeSwiftUI.bundle")
            guard let resourceBundle = Bundle(url: resourceURL) else {
                return nil
            }
            return resourceBundle.url(forResource: fontName, withExtension: "otf")
        #endif
    }
}
