//
//  ArticlesViewController.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 15/07/22.
//

import UIKit

class ArticlesViewController: UIViewController{
    
    lazy var backgroundTopImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.circleCactusBg
        
        return view
    }()
    
    lazy var speciesBackButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        view.tintColor = .white
        view.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 8
        view.layer.shadowOpacity = 0.5
        
        return view
    }()
    
    lazy var speciesMenuButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(Images.kebab_menu_img, for: .normal)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 8
        view.layer.shadowOpacity = 0.5
        
        return view
    }()
    
    lazy var heartButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(Images.heart, for: .normal)
        view.tintColor = .white
        view.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)        
        return view
    }()

    
    lazy var heartView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 1, green: 0.3843137255, blue: 0.3843137255, alpha: 1)
        view.layer.cornerRadius = 30
        view.layer.shadowOpacity = 0.3
        view.layer.shadowRadius = 5
        
        return view
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupSubviews()
    }
    
    func setupSubviews(){
        view.addSubview(backgroundTopImage)
        view.addSubview(speciesBackButton)
        view.addSubview(speciesMenuButton)
        view.addSubview(heartView)
        view.addSubview(heartButton)
        
        NSLayoutConstraint.activate([
            backgroundTopImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundTopImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundTopImage.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            speciesBackButton.topAnchor.constraint(equalTo: backgroundTopImage.topAnchor, constant: 50),
            speciesBackButton.leftAnchor.constraint(equalTo: backgroundTopImage.leftAnchor, constant: 20),
            speciesBackButton.heightAnchor.constraint(equalToConstant: 24),
            speciesBackButton.widthAnchor.constraint(equalToConstant: 24),
            
            speciesMenuButton.topAnchor.constraint(equalTo: backgroundTopImage.topAnchor, constant: 50),
            speciesMenuButton.rightAnchor.constraint(equalTo: backgroundTopImage.rightAnchor, constant: -20),
            speciesMenuButton.heightAnchor.constraint(equalToConstant: 24),
            speciesMenuButton.widthAnchor.constraint(equalToConstant: 24),
            
            heartView.topAnchor.constraint(equalTo: backgroundTopImage.bottomAnchor, constant: -25),
            heartView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -22),
            heartView.heightAnchor.constraint(equalToConstant: 60),
            heartView.widthAnchor.constraint(equalTo: heartView.heightAnchor),

            heartButton.centerXAnchor.constraint(equalTo: heartView.centerXAnchor),
            heartButton.centerYAnchor.constraint(equalTo: heartView.centerYAnchor),    
            heartButton.heightAnchor.constraint(equalToConstant: 40),
            heartButton.widthAnchor.constraint(equalTo: heartButton.heightAnchor),
            
        ])
    }
    
    
    @objc func backButtonTapped(){
        dismiss(animated: true)
    }
}
