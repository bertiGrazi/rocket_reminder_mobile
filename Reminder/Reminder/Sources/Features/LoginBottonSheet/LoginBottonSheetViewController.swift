//
//  LoginBottonSheetViewController.swift
//  Reminder
//
//  Created by Grazi  Berti on 16/02/25.
//

import Foundation
import UIKit

class LoginBottonSheetViewController: UIViewController {
    let loginView = LoginBottonSheetView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loginView)
        setupUI()
    }
    
    private func setupUI() {
        setupConstraints()
    }
    
    private func setupConstraints() {
        
    }
}
