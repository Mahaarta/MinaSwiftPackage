//
//  File.swift
//  
//
//  Created by macbook on 26/04/22.
//

import Foundation
import UIKit

final public class MinaPackView: UIView {
    
    //private static let NIB_NAME = "MinaPackView"
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var mainContainer: UIView!
    
    public override func awakeFromNib() {
        //initWithNib()
        
        setupLayout()
        print("AHAHA")
    }
    
    public func initWithNib() {
        //Bundle.main.loadNibNamed(MinaPackView.NIB_NAME, owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    public func setupLayout() {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    var viewBackgroundColor: UIColor = UIColor.red {
        didSet {
            view.backgroundColor = viewBackgroundColor
        }
    }
}
