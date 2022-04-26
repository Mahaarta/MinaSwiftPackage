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
    
    @IBOutlet weak var mainContainer: UIView!
    
    override func awakeFromNib() {
        initWithNib()
    }
    
    private func initWithNib() {
        Bundle.main.loadNibNamed(MinaPackView.NIB_NAME, owner: self, options: nil)
        mainContainer.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainContainer)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            mainContainer.topAnchor.constraint(equalTo: topAnchor),
            mainContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    var viewBackgroundColor: UIColor = UIColor.red {
        didSet {
            mainContainer.backgroundColor = viewBackgroundColor
        }
    }
}
