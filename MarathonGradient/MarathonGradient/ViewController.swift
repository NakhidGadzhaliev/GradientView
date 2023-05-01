//
//  ViewController.swift
//  MarathonGradient
//
//  Created by Нахид Гаджалиев on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let gradientView: UIView = UIView()
    let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureGradientView()
    }
    
}




extension ViewController {
    
    private func configureGradientView() {
        view.addSubview(gradientView)
        
        gradientView.layer.addSublayer(gradient)
        gradientView.frame.size = CGSize(width: 100, height: 100)
        
        gradient.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradient.frame = gradientView.frame
        gradient.cornerRadius = 10
        gradient.shadowRadius = 10
        gradient.shadowOpacity = 0.6
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
        ])
    }
    
}
