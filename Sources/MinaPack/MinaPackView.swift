//
//  File.swift
//  
//
//  Created by macbook on 26/04/22.
//

import Foundation
import UIKit

final class MinaPackView: UIView {
    
    private static let NIB_NAME = "MinaPackView"
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var mainContainer: UIView!
    
    override func awakeFromNib() {
        initWithNib()
    }
    
    private func initWithNib() {
        Bundle.main.loadNibNamed(MinaPackView.NIB_NAME, owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    var viewBackgroundColor: UIColor = UIColor.primaryColor {
        didSet {
            view.backgroundColor = viewBackgroundColor
        }
    }
}
