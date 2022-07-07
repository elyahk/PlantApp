//
//  mainViewController.swift
//  PlantApp
//
//  Created by user on 07/07/22.
//

import UIKit

class mainViewController: UIViewController {
    lazy var mainLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text =  "hello bro"
        view.textColor = K.Colors.mainTitleColor
        view.font = UIFont(name: "'SF Pro Text'", size: 30.0)
        view.font = .systemFont(ofSize: 30.0, weight: .bold)
//        view.heightAnchor.constraint(equalToConstant: 30.0)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
      
        setupSubViews()
    }
    
    func setupSubViews() {
        view.addSubview(mainLabel)
        mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
    }
}
