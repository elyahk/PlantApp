//
//  ArticlesCell.swift
//  PlantApp
//
//  Created by Bekzod Qahhorov on 19/07/22.
//

import UIKit

class ArticlesCell: UITableViewCell {
    private  lazy var mainImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.articlesTomatoImage.image
        view.contentMode = .scaleAspectFill
        return view
    }()
    private  lazy var discriptionLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 2
        view.text = "David Austin, Who Breathed Life Into the Rose, Is Dead at 92"
        view.font = .monospacedSystemFont(ofSize: 16, weight: .bold)
        view.textColor = Colors.mainTitleColor.color
        
        return view
    }()
    
    private  lazy var userStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [ userImage,labelStack,imageStack])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fillProportionally
        view.spacing = 5
        return view
    }()
    
    private  lazy var userImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.girlArticlesImage.image
        view.contentMode = .scaleAspectFill
        return view
    }()
    private  lazy var labelStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [ userNameLabel,dateLabel])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fill
        view.spacing =  7
         return view
    }()
    private  lazy var userNameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Shivani Vora"
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        view.font = .monospacedSystemFont(ofSize: 12, weight: .medium)
        view.textColor = .black
        
        return view
    }()
    private  lazy var dateLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "2019 . 01 .01"
        view.font = .monospacedSystemFont(ofSize: 9, weight: .medium)
        view.textColor = Colors.dateColor.color
        
        return view
    }()
    
    
    //image stack
    
    private  lazy var imageStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [ vectorImage,heartImage])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fill
        view.spacing =  25
        view.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        return view
    }()
    private  lazy var vectorImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.vectorAcriclesImage.image
        view.contentMode = .scaleAspectFit
        return view
    }()
    private  lazy var heartImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.heartAcriclesImage.image
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubview() {
        self.addSubview(mainImage)
        self.addSubview(discriptionLabel)
        self.addSubview(userStack)
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: self.topAnchor),
            mainImage.leftAnchor.constraint(equalTo: self.leftAnchor),
            mainImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            mainImage.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier: 0.5),
            
            discriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 15),
            discriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -15),
            discriptionLabel.bottomAnchor.constraint(equalTo: userStack.topAnchor,constant: -15),
            userStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -17),
            userStack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
            userStack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15),
            userImage.heightAnchor.constraint(equalToConstant: 50),
            userImage.widthAnchor.constraint(equalToConstant: 50),
            vectorImage.heightAnchor.constraint(equalToConstant: 19),
            vectorImage.widthAnchor.constraint(equalToConstant: 16),
            heartImage.heightAnchor.constraint(equalToConstant: 19),
            heartImage.widthAnchor.constraint(equalToConstant: 16),
            labelStack.widthAnchor.constraint(equalToConstant: 160)
        ])
    }
    
}
