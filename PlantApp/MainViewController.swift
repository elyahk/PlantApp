//
//  MainViewController.swift
//  PlantApp
//
//  Created by user on 10/07/22.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var mainLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text =  "hello bro"
        view.textColor = Colors.mainTitleColor.color
        view.font = UIFont(name: "'SF Pro Text'", size: 30.0)
        view.font = .systemFont(ofSize: 30.0, weight: .bold)
        //        view.heightAnchor.constraint(equalToConstant: 30.0)
        return view
    }()
    
    private lazy var contectCollectionView: UICollectionView = {
        var view = UICollectionView(frame: .zero, collectionViewLayout: setupLayout())
        view.translatesAutoresizingMaskIntoConstraints = false
        view.delegate = self
        view.dataSource = self
        view.register(
            UICollectionViewCell.self,
            forCellWithReuseIdentifier: "UICollectionViewCell")
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        setupSubViews()
    }
    
    func setupSubViews() {
        view.addSubview(contectCollectionView)
        NSLayoutConstraint.activate([
            contectCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            contectCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            contectCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            contectCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
    
    private func setupLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, _ in
            let item = NSCollectionLayoutItem(layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)))
            item.contentInsets = .init(top: 3, leading: 3, bottom: 3, trailing: 3)
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)), subitem: item, count: 1)
            return NSCollectionLayoutSection(group: group)
        }
        return layout
    }
}
extension MainViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = contectCollectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

