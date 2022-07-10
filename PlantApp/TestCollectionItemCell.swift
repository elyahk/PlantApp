//
//  TestCollectionItemCell.swift
//  PlantApp
//
//  Created by Eldorbek on 07/07/22.
//

import Foundation
import UIKit

class TestCollectionItemCell: UICollectionViewCell {
    static let cellName: String = String(describing: TestCollectionItemCell.self)

    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Int.random(in: 0...3) == 0 ? Images.image.image : Images.image1.image

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leftAnchor.constraint(equalTo: leftAnchor),
            imageView.rightAnchor.constraint(equalTo: rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
