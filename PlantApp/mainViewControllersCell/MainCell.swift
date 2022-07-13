//
//  MainCell.swift
//  PlantApp
//
//  Created by user on 13/07/22.
//

import UIKit

class MainCell: UICollectionViewCell {
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Hello"
        view.font = .monospacedSystemFont(ofSize: 21, weight: .bold)
        view.textColor = .white
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return view
    }()
    
   private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = Labels.loginPageDescription.label
        view.font = .monospacedSystemFont(ofSize: 14, weight: .regular)
        view.textColor = .white
       
        return view
    }()
    
    private lazy var labelStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [nameLabel, descriptionLabel])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 4
        view.distribution = .fill
        return view
    }()
    
    
    lazy var userImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.mainPageUserPhoto.image
        view.backgroundColor = .clear
        view.tintColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.mainPageBackgroundImage.image
        view.contentMode = .scaleToFill
        view.backgroundColor = .clear
        view.tintColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubviews(){
        self.addSubview(backgroundImage)
        self.addSubview(labelStack)
        self.addSubview(userImage)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImage.leftAnchor.constraint(equalTo: self.leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            labelStack.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            labelStack.leftAnchor.constraint(equalTo: self.leftAnchor ,constant: 23),
            
            userImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            userImage.leftAnchor.constraint(equalTo: labelStack.rightAnchor,constant: 25),
            userImage.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -23),
            userImage.heightAnchor.constraint(equalToConstant: 45),
            
        ])
    }
    
}
