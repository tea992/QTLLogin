//
//  QTLLoginViewController.swift
//  QTLLogin
//
//  Created by admin on 2022/3/1.
//

import UIKit
import TEAUIKit

class QTLLoginViewController: UIViewController {
    
    /// 背景图
    var backgroundImageView: TEAImageView = {
        let imageView = TEAImageView()
//        imageView.image = QTLLoginImageName("login_bkg-4s")
        imageView.image = UIImage(named: "QTLLogin.bundle/QTLLogin.bundle/login_bkg-iphoneXMAX")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }

}
