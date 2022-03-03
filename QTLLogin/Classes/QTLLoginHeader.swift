//
//  QTLLoginHeader.swift
//  QTLLogin
//
//  Created by admin on 2022/3/1.
//

import SnapKit

public func QTLLoginImageName(_ name:String) -> UIImage {
    return UIImage(named: "QTLLogin.bundle/\(name)") ?? UIImage()
}
