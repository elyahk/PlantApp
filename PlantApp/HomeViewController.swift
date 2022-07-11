//
//  HomeViewController.swift
//  PlantApp
//
//  Created by Eldorbek on 07/07/22.
//

import Foundation
import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
    lazy var contentView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.1742218435, green: 0.8692209125, blue: 0.6429886222, alpha: 1)
        view.layer.cornerRadius = 10
        view.layer.shadowOffset = CGSize(width: 1.0,
                                         height: 1.0)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.8
        view.layer.shadowColor = #colorLiteral(red: 0.1742218435, green: 0.8692209125, blue: 0.6429886222, alpha: 1)

        return view
    }()

    lazy var buttonImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "camera.fill")
        view.backgroundColor = .clear
        view.tintColor = .white

        return view
    }()

    lazy var buttonLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Identify"
        view.font = UIFont.boldSystemFont(ofSize: 16)
        view.textColor = .white
        return view
    }()

    lazy var button: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(buttonTapped(on:)), for: .touchUpInside)
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
        self.backgroundColor = .white
        self.addSubview(contentView1)
        self.addSubview(buttonLabel)
        self.addSubview(buttonImage)
        self.addSubview(button)

        NSLayoutConstraint.activate([
            contentView1.topAnchor.constraint(equalTo: self.topAnchor),
            contentView1.leftAnchor.constraint(equalTo: self.leftAnchor),
            contentView1.rightAnchor.constraint(equalTo: self.rightAnchor),
            contentView1.bottomAnchor.constraint(equalTo: self.bottomAnchor),

            buttonLabel.bottomAnchor.constraint(equalTo: contentView1.bottomAnchor, constant: -20),
            buttonLabel.centerXAnchor.constraint(equalTo: contentView1.centerXAnchor),

            buttonImage.topAnchor.constraint(equalTo: contentView1.topAnchor, constant: 20),
            buttonImage.centerXAnchor.constraint(equalTo: contentView1.centerXAnchor),
            buttonImage.heightAnchor.constraint(equalToConstant: 25),
            buttonImage.widthAnchor.constraint(equalToConstant: 30),

            button.topAnchor.constraint(equalTo: contentView.topAnchor),
            button.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            button.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }

    @objc func buttonTapped(on button: UIButton){
        print("Tapped")
    }
    
}

class HomeViewController: UIViewController {
    lazy var contentCollectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        view.translatesAutoresizingMaskIntoConstraints = false
        view.delegate = self
        view.dataSource = self
        view.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        view.register(ButtonCollectionViewCell.self, forCellWithReuseIdentifier: "ButtonCollectionViewCell")
        view.register(Header.self, forSupplementaryViewOfKind: "headerId", withReuseIdentifier: "Header")

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(contentCollectionView)

        NSLayoutConstraint.activate([
            contentCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            contentCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            contentCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            contentCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
            if sectionIndex == 0 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = .init(top: 2.0, leading: 2.0, bottom: 2.0, trailing: 2.0)
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.3)),
                    subitem: item,
                    count: 1
                )

                return NSCollectionLayoutSection(group: group)
            } else if sectionIndex == 1 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(widthDimension: .fractionalWidth(0.9), heightDimension: .absolute(75.0)),
                    subitem: item,
                    count: 3
                )
                group.interItemSpacing = .fixed(22.0)

                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 22.0
                section.contentInsets.leading = 14.0
                section.contentInsets.trailing = 14.0
                section.contentInsets.bottom = 24.0
                section.orthogonalScrollingBehavior = .continuous

                return section
            } else if sectionIndex == 2 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(widthDimension: .fractionalWidth(0.8), heightDimension: .fractionalHeight(0.25)),
                    subitem: item,
                    count: 1
                )
                group.contentInsets = .init(top: 5.0, leading: 14.0, bottom: 2.0, trailing: 0.0)

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(30.0)),
                    elementKind: "headerId",
                    alignment: .topLeading
                )
                header.contentInsets.leading = 14.0
                section.boundarySupplementaryItems = [header]

                return section
            } else {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(
                    layoutSize: .init(widthDimension: .fractionalWidth(0.4), heightDimension: .fractionalHeight(0.25)),
                    subitem: item,
                    count: 1
                )
                group.contentInsets = .init(top: 5.0, leading: 17.0, bottom: 2.0, trailing: 0.0)
                let header: NSCollectionLayoutBoundarySupplementaryItem = .init(
                    layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(30.0)),
                    elementKind: "headerId",
                    alignment: .topLeading
                )
                header.contentInsets.leading = 14.0
                let section = NSCollectionLayoutSection(group: group)
                section.boundarySupplementaryItems = [header]
                section.orthogonalScrollingBehavior = .continuous

                return section
            }
        }

        return layout
    }
}

// MARK: -

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        4
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 10
        } else if section == 3 {
            return 10
        }

        return 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard indexPath.section == 1, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCollectionViewCell", for: indexPath) as? ButtonCollectionViewCell else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
            cell.backgroundColor = .red

            return cell
        }

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 2 {
            guard let suplimentary = collectionView.dequeueReusableSupplementaryView(ofKind: "headerId", withReuseIdentifier: "Header", for: indexPath) as? Header else { return UICollectionReusableView() }
            suplimentary.label.text = "Plant Types"

            return suplimentary

        } else if indexPath.section == 3 {
            guard let suplimentary = collectionView.dequeueReusableSupplementaryView(ofKind: "headerId", withReuseIdentifier: "Header", for: indexPath) as? Header else { return UICollectionReusableView() }
            suplimentary.label.text = "Photography"

            return suplimentary

        } else {
            return UICollectionReusableView()
        }

    }
}

class Header: UICollectionReusableView {
    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        label.text = "Text"

        label.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor),
            label.leftAnchor.constraint(equalTo: self.leftAnchor),
            label.rightAnchor.constraint(equalTo: self.rightAnchor),
            label.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//    lazy var titleLabel: UILabel = {
//        let view = UILabel()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.text = "Hello Taylor,"
//
//        return view
//    }()
//
//    lazy var descriptionLabel: UILabel = {
//        let view = UILabel()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.text = "Let’s Learn More About Plants"
//
//        return view
//    }()
//
//    lazy var profileButton: UIButton = {
//        let view = UIButton()
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
//
//    lazy var searchBarView: UISearchBar = {
//        let view = UISearchBar()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.placeholder = "Search For Plants"
//
//        return view
//    }()
//
//    lazy var identityButton: UIButton = {
//        let view = UIButton()
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
//
//    lazy var speciesButton: UIButton = {
//        let view = UIButton()
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
//
//    lazy var articlesButton: UIButton = {
//        let view = UIButton()
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
//
//    lazy var buttonsStackView: UIStackView = {
//        let view = UIStackView(arrangedSubviews: [identityButton, speciesButton, articlesButton])
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.axis = .horizontal
//        view.distribution = .fill
//        view.contentMode = .top
//        view.spacing = 20.0
//
//        return view
//    }()
