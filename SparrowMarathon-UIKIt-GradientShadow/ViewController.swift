//
//  ViewController.swift
//  SparrowMarathon-UIKIt-GradientShadow
//
//  Created by Sergey Leontiev on 1.11.24..
//

import UIKit

class ViewController: UIViewController {
    private let resultView = ResultView()
   
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
}
