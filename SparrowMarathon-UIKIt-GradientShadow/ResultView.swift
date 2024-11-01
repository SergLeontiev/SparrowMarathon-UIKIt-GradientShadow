//
//  ResultView.swift
//  SparrowMarathon-UIKIt-GradientShadow
//
//  Created by Sergey Leontiev on 1.11.24..
//

import UIKit

final class ResultView: UIView {
    private var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [Constants.blueColor.cgColor, Constants.redColor.cgColor]
        gradientLayer.cornerRadius = Constants.cornerRadius
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        return gradientLayer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}

private extension ResultView {
    func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = Constants.cornerRadius
        
        layer.cornerRadius = Constants.cornerRadius
        layer.addSublayer(gradientLayer)
    }
}

private extension ResultView {
    enum Constants {
        static let cornerRadius: CGFloat = 10
        static let blueColor = UIColor(red: 74/255, green: 144/255, blue: 226/255, alpha: 1)
        static let redColor = UIColor(red: 255/255, green: 90/255, blue: 95/255, alpha: 1)
    }
}
