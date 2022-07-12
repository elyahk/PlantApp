//
//  SignUpViewController.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 06/07/22.
//

import UIKit

class SignUpViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate{
    
    private lazy var testCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        var view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.register(CollectionCell.self, forCellWithReuseIdentifier: "image")
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
     setupSubviews()
    }
    
    private func setupSubviews() {
        view.addSubview(testCollectionView)
        
        NSLayoutConstraint.activate([
            testCollectionView.topAnchor.constraint(equalTo: view.topAnchor,constant: 25),
            testCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 24),
            testCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            testCollectionView.bottomAnchor.constraint(equalTo: view.topAnchor,constant: -25),
        ])
    }
}

extension SignUpViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "image", for: indexPath) as? CollectionCell else { return UICollectionViewCell() }
        
        return cell
    }
    
}
