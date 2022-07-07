//
//  CollectionViewCell.swift
//  PlantApp
//
//  Created by user on 07/07/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    private lazy var labelStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [cellTitle,cellSubtitle])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 4
        view.distribution = .fill
        view.axis = .vertical
        return view
    }()
    
    
    private lazy var cellTitle: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Home Plants"
        view.textColor = .white
        view.font = .systemFont(ofSize: 18, weight: .bold)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
      
        return view
        
    }()
    private lazy var cellSubtitle: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "68 Types of Plants"
        view.textColor = .white
        view.font = .systemFont(ofSize: 12, weight: .regular)
        return view
        
    }()
    
    private lazy var imageView: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = .init(named: "ic_plant_1")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   private func setupSubViews() {
       self.addSubview(imageView)
       self.addSubview(labelStack)
       NSLayoutConstraint.activate([
        imageView.topAnchor.constraint(equalTo: self.topAnchor),
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor),
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        labelStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
        labelStack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 13),
        labelStack.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
       ])
   }
}
