//
//  QTLLoginHeader.swift
//  QTLLogin
//
//  Created by admin on 2022/3/1.
//

import SnapKit
import TEACommon

public func QTLLoginImageName(_ name:String) -> UIImage {
    let bundle = Bundle.local
    if let bundleURL = bundle.url(forResource: "QTLLogin", withExtension: "bundle") {
        let sourceBundle = Bundle(url: bundleURL)
        return UIImage(named: name, in: sourceBundle, compatibleWith: nil) ?? UIImage()
    }
    return UIImage()
}

extension Bundle {
    static var local: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: QTLLoginHeader.self)
        #endif
    }
}

private class QTLLoginHeader {}
