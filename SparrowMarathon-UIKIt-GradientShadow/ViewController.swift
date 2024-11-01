//
//  ViewController.swift
//  SparrowMarathon-UIKIt-GradientShadow
//
//  Created by Sergey Leontiev on 1.11.24..
//

import UIKit

class ViewController: UIViewController {
    private lazy var resultView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowRadius = 10
        view.layer.cornerRadius = 10
        view.layer.addSublayer(gradientLayer)
        return view
    }()
    private var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        let blueColor = UIColor(red: 74/255, green: 144/255, blue: 226/255, alpha: 1)
        let redColor = UIColor(red: 255/255, green: 90/255, blue: 95/255, alpha: 1)
        gradientLayer.colors = [blueColor.cgColor, redColor.cgColor]
        gradientLayer.cornerRadius = 10
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        return gradientLayer
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(resultView)
        
        NSLayoutConstraint.activate([
            resultView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            resultView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            resultView.widthAnchor.constraint(equalToConstant: 125),
            resultView.heightAnchor.constraint(equalToConstant: 125),
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gradientLayer.frame = resultView.bounds
    }
}
