//
//  SignUpViewController.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 06/07/22.
//

import UIKit

class SignUpViewController: UIViewController{
    
    private lazy var testCollectionView: UICollectionView = {
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal

            let view = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
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

}

