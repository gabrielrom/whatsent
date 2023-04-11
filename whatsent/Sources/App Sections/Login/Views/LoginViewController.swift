//
//  LoginViewController.swift
//  whatsent
//
//  Created by Gabriel Matheus on 11/04/23.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {
    lazy var greeting: UILabel = {
        let label = UILabel()
        
        label.text = "Hello, Gabriel!"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(greeting)
        
        NSLayoutConstraint.activate([
            greeting.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greeting.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
