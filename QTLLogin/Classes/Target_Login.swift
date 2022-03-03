//
//  Target_Login.swift
//  QTLLogin
//
//  Created by admin on 2022/3/1.
//

import UIKit

@objc class Target_Login: NSObject {
    
    // MARK: - 登录VC
    @objc func Action_LoginViewController(_ params: NSDictionary) -> UIViewController {
        return QTLLoginViewController()
    }
    
}
