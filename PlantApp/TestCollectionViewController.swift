//
//  TestCollectionViewController.swift
//  PlantApp
//
//  Created by Eldorbek on 07/07/22.
//

import UIKit

class TestCollectionViewController: UIViewController {
    private lazy var collectionView: UICollectionView = {
        let view = UICollectionView.init(frame: .zero, collectionViewLayout: createLayout())
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(TestCollectionItemCell.self, forCellWithReuseIdentifier: TestCollectionItemCell.cellName)
        view.delegate = self
        view.dataSource = self

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(collectionView)

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension TestCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func createLayout() -> UICollectionViewCompositionalLayout {
        let singleItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(2/3),
                heightDimension: .fractionalHeight(1)
            )
        )

        singleItem.contentInsets = NSDirectionalEdgeInsets(top: 2.0, leading: 2.0, bottom: 0.0, trailing: 0.0)

        let doubletItem = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1/2)
            )
        )
        doubletItem.contentInsets = NSDirectionalEdgeInsets(top: 2.0, leading: 2.0, bottom: 0.0, trailing: 2.0)

        let doubletGroup = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1/3),
                heightDimension: .fractionalHeight(1.0)),
            subitem: doubletItem,
            count: 2
        )

        let topGroup = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(2/3)),
            subitems: [singleItem, doubletGroup]
        )

        let tripletItem = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        tripletItem.contentInsets = .init(top: 2.0, leading: 2.0, bottom: 0.0, trailing: 0.0)

        let tripletGroup = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1/3)), subitem: tripletItem, count: 3)
        tripletGroup.contentInsets = .init(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 2.0)

        let contentGroup = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/2)),
            subitems: [topGroup, tripletGroup]
        )
//        contentGroup.contentInsets = .init(top: 2.0, leading: 2.0, bottom: 0.0, trailing: 2.0)

        let section = NSCollectionLayoutSection(group: contentGroup)
        return UICollectionViewCompositionalLayout(section: section)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TestCollectionItemCell.cellName, for: indexPath) as? TestCollectionItemCell else {
            return UICollectionViewCell()
        }

        cell.backgroundColor = .systemGray6

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 100.0, height: 100.0)
    }
}
