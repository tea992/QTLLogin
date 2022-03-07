//
//  QTLLoginViewController.swift
//  QTLLogin
//
//  Created by admin on 2022/3/1.
//

import UIKit
import TEAUIKit
import TEACommon

/// 登录页面
class QTLLoginViewController: UIViewController {
    
    /// 背景图
    var backgroundImageView: TEAImageView = {
        let imageView = TEAImageView()
        imageView.image = QTLLoginImageName("login_bkg-4s")
        return imageView
    }()
    
    /// 底部图片
    var bottomImageView: TEAImageView = {
        let bottomImageView = TEAImageView()
        bottomImageView.image = UIImage.tea_imageWithColor(UIColor.white.withAlphaComponent(0.9))
        return bottomImageView
    }()
    
    /// QQ登录按钮
    var qqLoginButton: UIButton = {
        let qqLoginButton = UIButton(type: .custom)
        qqLoginButton.setBackgroundImage(UIImage.tea_imageWithColor(UIColor.black), for: .normal)
        qqLoginButton.setImage(QTLLoginImageName("login_btn_qq_icon_normal"), for: .normal)
        qqLoginButton.setTitle(" QQ登录", for: .normal)
        qqLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: uiAdaptation(16))
        return qqLoginButton
    }()
    
    /// 微信登录
    var wxLoginButton: UIButton = {
        let wxLoginButton = UIButton(type: .custom)
        wxLoginButton.setBackgroundImage(UIImage.tea_imageWithColor(UIColor.black), for: .normal)
        wxLoginButton.setImage(QTLLoginImageName("login_btn_wx_icon_normal"), for: .normal)
        wxLoginButton.setTitle(" 微信登录", for: .normal)
        wxLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: uiAdaptation(16))
        return wxLoginButton
    }()
    
    /// 游客登录
    var touristsLoginButton: UIButton = {
        let touristsLoginButton = UIButton(type: .custom)
        touristsLoginButton.setImage(QTLLoginImageName("login_tourists_btn_arrow_normal"), for: .normal)
        touristsLoginButton.setTitle("游客进入", for: .normal)
        touristsLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: uiAdaptation(13))
        touristsLoginButton.setTitleColor(UIColor.black, for: .normal)
        touristsLoginButton.imageTitlePosition(.right, spacing: 2)
        return touristsLoginButton
    }()
    
    /// 帮助与反馈
    var helpAndFeedbackButton: UIButton = {
        let helpAndFeedbackButton = UIButton(type: .custom)
        helpAndFeedbackButton.setImage(QTLLoginImageName("login_tourists_btn_arrow_normal"), for: .normal)
        helpAndFeedbackButton.setTitle("帮助与反馈", for: .normal)
        helpAndFeedbackButton.titleLabel?.font = UIFont.systemFont(ofSize: uiAdaptation(13))
        helpAndFeedbackButton.setTitleColor(UIColor.black, for: .normal)
        helpAndFeedbackButton.imageTitlePosition(.right, spacing: 2)
        return helpAndFeedbackButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view.addSubview(bottomImageView)
        bottomImageView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(uiAdaptation(266))
        }
        
        view.addSubview(qqLoginButton)
        qqLoginButton.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(uiAdaptation(45))
            make.height.equalTo(uiAdaptation(44))
            make.top.equalTo(bottomImageView.snp.top).offset(uiAdaptation(20))
        }
        
        view.addSubview(wxLoginButton)
        wxLoginButton.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(uiAdaptation(45))
            make.height.equalTo(uiAdaptation(44))
            make.top.equalTo(qqLoginButton.snp.bottom).offset(uiAdaptation(10))
        }
        
        view.addSubview(touristsLoginButton)
        touristsLoginButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.right.equalTo(self.view.snp.centerX).inset(uiAdaptation(10))
            make.top.equalTo(wxLoginButton.snp.bottom).offset(uiAdaptation(20))
        }
        
        view.addSubview(helpAndFeedbackButton)
        helpAndFeedbackButton.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(30)
            make.left.equalTo(self.view.snp.centerX).offset(uiAdaptation(10))
            make.top.equalTo(wxLoginButton.snp.bottom).offset(uiAdaptation(20))
        }
    }

}
