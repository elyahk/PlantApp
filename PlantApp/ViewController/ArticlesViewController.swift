//
//  ArticlesViewController.swift
//  PlantApp
//
//  Created by Bekzod Qahhorov on 19/07/22.
//

import UIKit

class ArticlesViewController: UIViewController {
    
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.listPlantsBackground.image
        return view
    }()
    
    lazy var searchBar: UITextField = {
       let view = UITextField()
      let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leftViewMode = .always
        view.leftView = paddingView
        view.placeholder = "Search For Articles "
        view.textColor = .black
        view.font = .monospacedSystemFont(ofSize: 14, weight: .regular)
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        view.layer.masksToBounds = true
        
        return view
    }()
// 
    
    private lazy var articlesLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Articles"
        view.textColor = .white
        view.font = .monospacedSystemFont(ofSize: 30, weight: .bold)
        return view
    }()
    private lazy var tableView: UITableView = {
        var view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.delegate = self
        view.dataSource = self
        view.register(ArticlesCell.self, forCellReuseIdentifier: "ArticlesCell")
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubview()
    }
    
    private func setupSubview() {
       
        view.backgroundColor = .systemGray6
        view.addSubview(backgroundImage)
        view.addSubview(articlesLabel)
        view.addSubview(searchBar)
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor),
        
            articlesLabel.leftAnchor.constraint(equalTo: backgroundImage.leftAnchor, constant: 23),
            articlesLabel.bottomAnchor.constraint(equalTo: searchBar.topAnchor, constant: -20),
            
            searchBar.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -33),
            searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            searchBar.heightAnchor.constraint(equalToConstant: 50),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor,constant: 30 ),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 22),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -22),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
}

extension ArticlesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2 + 45
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       guard let cell  = tableView.dequeueReusableCell(withIdentifier: "ArticlesCell", for: indexPath) as? ArticlesCell else {
           return UITableViewCell()
           
       }
     
        cell.backgroundColor = .systemGray6
        cell.layer.cornerRadius = 14
        cell.clipsToBounds = true
        
        return cell
    }
    


}
