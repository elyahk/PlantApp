//
//  TestCollectionCell.swift
//  PlantApp
//
//  Created by user on 12/07/22.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    static let cellId = String(describing: CollectionCell.self)
    
    private lazy var cellImage: UIImageView = {
            var view = UIImageView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.contentMode = .scaleAspectFill
            view.image = (Int.random(in: 0...3) != 0) ? Images.readPageImage.image : Images.learnPageDot.image
            return view
        }()
        
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupSubViews()
        }
        required init?(coder: NSCoder) {
            fatalError("error")
        }
        
        private func setupSubViews() {
            self.addSubview(cellImage)
            
            NSLayoutConstraint.activate([
                cellImage.topAnchor.constraint(equalTo: self.topAnchor),
                cellImage.leftAnchor.constraint(equalTo: self.leftAnchor),
                cellImage.rightAnchor.constraint(equalTo: self.rightAnchor),
                cellImage.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        }
}
