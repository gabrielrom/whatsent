//
//  LoginViewController.swift
//  whatsent
//
//  Created by Gabriel Matheus on 11/04/23.
//

import UIKit
import Foundation

class SignInViewController: UIViewController {
    lazy var greeting: UILabel = {
        let label = UILabel()
        let attributtedString = NSMutableAttributedString(string: "Faça seu login para começar uma experiência incrível.")
        let paragraphStyle = NSMutableParagraphStyle()
        
        
        label.numberOfLines = 2
        label.font = UIFont(name: "Inter-Regular", size: 15)
        label.textColor = UIColor(named: "Secondary-Text-Color")
        label.translatesAutoresizingMaskIntoConstraints = false
        
        paragraphStyle.lineSpacing = 5
        attributtedString.addAttribute(.paragraphStyle,
                                       value: paragraphStyle,
                                       range: NSMakeRange(0, attributtedString.length))
        
        label.attributedText = attributtedString
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        view.backgroundColor = UIColor(named: "Screen-Background")
        view.addSubview(greeting)
        
        NSLayoutConstraint.activate([
            greeting.widthAnchor.constraint(equalToConstant: 220),
            greeting.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            greeting.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15)
        ])
    }
}
