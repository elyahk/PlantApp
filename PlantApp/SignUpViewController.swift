//
//  SignUpViewController.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 06/07/22.
//

import UIKit

class SignUpViewController: UIViewController{
    
    private lazy var testCollectionView: UICollectionView = {
        let view = UICollectionView.init(frame: .zero, collectionViewLayout: createLayout())
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.cellId)
        view.delegate = self
        view.dataSource = self
        
        return view
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    private func setupSubviews() {
        view.addSubview(testCollectionView)
        
        NSLayoutConstraint.activate([
            testCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            testCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            testCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            testCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
extension SignUpViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.cellId, for: indexPath) as?  CollectionCell else {
            return UICollectionViewCell()
        }
        
        
        return cell
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let doubleItem =  NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)))
        let doubleGroup = NSCollectionLayoutGroup.vertical(layoutSize:.init(
            widthDimension: .fractionalWidth(1/2),
            heightDimension: .fractionalHeight(1)) ,subitem: doubleItem, count: 2)
        doubleGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(10)
        
        let singleItem =  NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1/2),
            heightDimension: .fractionalHeight(1)))
        
        let trippleItem = NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)))
        let trippleIGroup = NSCollectionLayoutGroup.horizontal(layoutSize:.init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(2/3)) ,subitem: trippleItem, count: 3)
        let topGroup = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1/3)),subitems: [singleItem,doubleGroup])
      
        let mainGroup = NSCollectionLayoutGroup.vertical(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)),subitems: [topGroup,trippleIGroup])
        mainGroup.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        let section = NSCollectionLayoutSection(group: mainGroup)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
    
}

