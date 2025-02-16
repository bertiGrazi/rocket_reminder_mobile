//
//  SplashViewController.swift
//  Reminder
//
//  Created by Grazi  Berti on 16/02/25.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    let contentView = SpashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupGesture()
        
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.primaryRedBase
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottonSheet))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func showLoginBottonSheet() {
        let loginBottonSheet = LoginBottomSheetViewController()
        loginBottonSheet.modalPresentationStyle = .overCurrentContext
        loginBottonSheet.modalTransitionStyle = .crossDissolve
        self.present(loginBottonSheet, animated: false) {
            loginBottonSheet.animateShow()
        }
    }
}
