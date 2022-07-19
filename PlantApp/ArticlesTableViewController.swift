//
//  ArticlesViewController.swift
//  PlantApp
//
//  Created by Ogabek Bakhodirov on 15/07/22.
//

import UIKit

class ArticlesTableViewController: UIViewController{
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.delegate = self
        view.dataSource = self
        view.separatorStyle = .none
        view.register(ArticlesTopTableViewCell.self, forCellReuseIdentifier: ArticlesTopTableViewCell.cellName)
        view.register(ArticlesRatingTableViewCell.self, forCellReuseIdentifier: ArticlesRatingTableViewCell.cellName)
        view.register(ArticlesDescriptionTableViewCell.self, forCellReuseIdentifier: ArticlesDescriptionTableViewCell.cellName)
        
        return view
    }()
    
    //    lazy var articlesTopTableViewCell: ArticlesTopTableViewCell = {
    //        let view = ArticlesTopTableViewCell()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        
    //        return view
    //    }()
    //    
    //    lazy var backgroundTopImage: UIImageView = {
    //        let view = UIImageView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.image = Images.circleCactusBg
    //        
    //        return view
    //    }()
    //    
    //    lazy var speciesBackButton: UIButton = {
    //        var view = UIButton()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
    //        view.tintColor = .white
    //        view.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    //        view.layer.shadowColor = UIColor.black.cgColor
    //        view.layer.shadowRadius = 8
    //        view.layer.shadowOpacity = 0.5
    //        
    //        return view
    //    }()
    //    
    //    lazy var speciesMenuButton: UIButton = {
    //        let view = UIButton()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.setImage(Images.kebab_menu_img, for: .normal)
    //        view.layer.shadowColor = UIColor.black.cgColor
    //        view.layer.shadowRadius = 8
    //        view.layer.shadowOpacity = 0.5
    //        
    //        return view
    //    }()
    //    
    //    lazy var heartButton: UIButton = {
    //        var view = UIButton()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.setImage(Images.heart, for: .normal)
    //        view.tintColor = .white
    //        view.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)        
    //        return view
    //    }()
    //
    //    
    //    lazy var heartView: UIView = {
    //       let view = UIView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.backgroundColor = #colorLiteral(red: 1, green: 0.3843137255, blue: 0.3843137255, alpha: 1)
    //        view.layer.cornerRadius = 30
    //        view.layer.shadowOpacity = 0.3
    //        view.layer.shadowRadius = 5
    //        
    //        return view
    //    }()
    //    
    //    lazy var dangerTitle: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "DANGER"
    //        view.textColor = #colorLiteral(red: 0.1843137255, green: 0.568627451, blue: 0.9215686275, alpha: 1)
    //        view.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.568627451, blue: 0.9215686275, alpha: 0.1)
    //        view.font = UIFont(name:"HelveticaNeue-Bold", size: 12.0)
    //        view.textAlignment = .center
    //        view.layer.cornerRadius = 5
    //        view.clipsToBounds = true
    //
    //        
    //        return view
    //    }()
    //    
    //    lazy var decorationTitle: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "DECORATION"
    //        view.textColor = #colorLiteral(red: 0.1843137255, green: 0.568627451, blue: 0.9215686275, alpha: 1)
    //        view.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.568627451, blue: 0.9215686275, alpha: 0.1)
    //        view.font = UIFont(name:"HelveticaNeue-Bold", size: 12.0)
    //        view.textAlignment = .center
    //        view.layer.cornerRadius = 5
    //        view.clipsToBounds = true
    //        
    //        return view
    //    }()
    //    
    //    lazy var dangerStackView: UIStackView = {
    //        let view = UIStackView(arrangedSubviews: [dangerTitle, decorationTitle])
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.spacing = 10
    //        view.axis = .horizontal
    //        view.distribution = .fillProportionally
    //        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    //
    //        return view
    //    }()
    
    //    lazy var articleTitle: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "Circle Cactus"
    //        view.textColor = #colorLiteral(red: 0.2117647059, green: 0.2705882353, blue: 0.3529411765, alpha: 1)
    //        view.font = UIFont(name:"HelveticaNeue-Bold", size: 27.0)
    //        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    //        
    //        return view
    //    }()
    //    
    //    lazy var starAmount: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "4.1"
    //        view.textColor = #colorLiteral(red: 0.2117647059, green: 0.2705882353, blue: 0.3529411765, alpha: 1)
    //        view.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
    //        
    //        return view
    //    }()
    //    
    //    lazy var starsStackView: UIStackView = {
    //        let view = UIStackView(arrangedSubviews: [makeStar(), makeStar(), makeStar(), makeStar(), makeStar(false), starAmount])
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.spacing = 4
    //        view.axis = .horizontal
    //        view.distribution = .fillProportionally
    //        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    //        
    //        return view
    //    }()
    //    
    //    lazy var plantKingdom: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "KINGDOM"
    //        view.font = UIFont(name: "SFProText-Semibold", size: 14)
    //        view.textColor = #colorLiteral(red: 0.2862745098, green: 0.3333333333, blue: 0.4, alpha: 1)
    //        
    //        return view
    //    }()
    //    
    //    lazy var plantKingdomName: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "Plantae"
    //        view.font = .systemFont(ofSize: 14, weight: .regular)
    //        view.textColor = #colorLiteral(red: 0.2725816071, green: 0.342954278, blue: 0.4284142256, alpha: 1)
    //        
    //        return view
    //    }()
    //    
    //    lazy var kingdomStack: UIStackView = {
    //        let view = UIStackView(arrangedSubviews: [plantKingdom, plantKingdomName])
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.axis = .vertical
    //        view.spacing = 5
    //        
    //        return view
    //    }()
    //    
    //    lazy var plantFamily: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "FAMILY"
    //        view.font = UIFont(name: "SFProText-Semibold", size: 14)
    //        view.textColor = #colorLiteral(red: 0.2862745098, green: 0.3333333333, blue: 0.4, alpha: 1)
    //        
    //        return view
    //    }()
    //    
    //    lazy var plantFamilyName: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "Cactaceae"
    //        view.font = .systemFont(ofSize: 14, weight: .regular)
    //        view.textColor = #colorLiteral(red: 0.2725816071, green: 0.342954278, blue: 0.4284142256, alpha: 1)
    //        
    //        return view
    //    }()
    //    
    //    lazy var familyStack: UIStackView = {
    //        let view = UIStackView(arrangedSubviews: [plantFamily, plantFamilyName])
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.axis = .vertical
    //        view.spacing = 5
    //        
    //        return view
    //    }()
    //    
    //    lazy var plantTypeStack: UIStackView = {
    //        let view = UIStackView(arrangedSubviews: [kingdomStack, familyStack])
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.axis = .horizontal
    //        view.distribution = .fillProportionally
    //        view.spacing = 15
    //        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    //        
    //        return view
    //    }()
    
    //    lazy var descriptionLabel: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = "DESCRIPTION"
    //        view.font = .systemFont(ofSize: 14, weight: .bold)
    //        view.textColor = #colorLiteral(red: 0.2862745098, green: 0.3333333333, blue: 0.4, alpha: 1)
    //        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
    //        
    //        return view
    //    }()
    //    
    //    lazy var descriptionText: UILabel = {
    //        let view = UILabel()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        view.text = " The word 'cactus' derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name originally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought. Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought."
    //        view.numberOfLines = 0
    //        view.minimumContentSizeCategory = .medium
    //        view.setContentHuggingPriority(.defaultLow, for: .vertical)
    //        view.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
    //        view.font = .systemFont(ofSize: 14, weight: .regular)
    //        view.textColor = #colorLiteral(red: 0.2862745098, green: 0.3333333333, blue: 0.4, alpha: 1)
    //        view.contentMode = .top
    //    
    //        return view
    //    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupSubviews()
    }
    
    func setupSubviews(){
        view.addSubview(tableView)
        //        view.addSubview(articleTitle)
        //        view.addSubview(dangerStackView)
        //        view.addSubview(starsStackView)
        //        view.addSubview(plantTypeStack)
        //        view.addSubview(descriptionLabel)
        //        view.addSubview(descriptionText)
        
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            //            backgroundTopImage.topAnchor.constraint(equalTo: view.topAnchor),
            //            backgroundTopImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            //            backgroundTopImage.rightAnchor.constraint(equalTo: view.rightAnchor),
            //            backgroundTopImage.heightAnchor.constraint(equalToConstant: 280),
            //
            ////            
            //            speciesBackButton.topAnchor.constraint(equalTo: backgroundTopImage.topAnchor, constant: 50),
            //            speciesBackButton.leftAnchor.constraint(equalTo: backgroundTopImage.leftAnchor, constant: 20),
            //            speciesBackButton.heightAnchor.constraint(equalToConstant: 24),
            //            speciesBackButton.widthAnchor.constraint(equalToConstant: 24),
            //            
            //            speciesMenuButton.topAnchor.constraint(equalTo: backgroundTopImage.topAnchor, constant: 50),
            //            speciesMenuButton.rightAnchor.constraint(equalTo: backgroundTopImage.rightAnchor, constant: -20),
            //            speciesMenuButton.heightAnchor.constraint(equalToConstant: 24),
            //            speciesMenuButton.widthAnchor.constraint(equalToConstant: 24),
            //            
            //            heartView.topAnchor.constraint(equalTo: backgroundTopImage.bottomAnchor, constant: -25),
            //            heartView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -22),
            //            heartView.heightAnchor.constraint(equalToConstant: 60),
            //            heartView.widthAnchor.constraint(equalTo: heartView.heightAnchor),
            //
            //            heartButton.centerXAnchor.constraint(equalTo: heartView.centerXAnchor),
            //            heartButton.centerYAnchor.constraint(equalTo: heartView.centerYAnchor),    
            //            heartButton.heightAnchor.constraint(equalToConstant: 40),
            //            heartButton.widthAnchor.constraint(equalTo: heartButton.heightAnchor),
            //            
            //            dangerStackView.topAnchor.constraint(equalTo: backgroundTopImage.bottomAnchor, constant: 25),
            //            dangerStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            dangerStackView.heightAnchor.constraint(equalToConstant: 25),
            //            
            //            dangerTitle.widthAnchor.constraint(equalToConstant: 78),
            //            
            //            decorationTitle.widthAnchor.constraint(equalToConstant: 108),
            
            //            articleTitle.topAnchor.constraint(equalTo: dangerStackView.bottomAnchor, constant: 25),
            //            articleTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            
            //            starsStackView.topAnchor.constraint(equalTo: articleTitle.bottomAnchor, constant: 15),
            //            starsStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            
            //            plantTypeStack.topAnchor.constraint(equalTo: starsStackView.bottomAnchor, constant: 15),
            //            plantTypeStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            
            //            descriptionLabel.topAnchor.constraint(equalTo: plantTypeStack.bottomAnchor, constant: 30),
            //            descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            
            //            descriptionText.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
            //            descriptionText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            //            descriptionText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            //            descriptionText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            
            
        ])
    }
    
    
    //    @objc func backButtonTapped(){
    //        dismiss(animated: true)
    //    }
    
    //    func makeStar(_ isActive: Bool = true) -> UIImageView{
    //        let star = UIImageView()
    //        star.image = UIImage(systemName: "star.fill")
    //        star.frame.size = CGSize(width: 15, height: 15)
    //        if isActive == true{
    //            star.tintColor = #colorLiteral(red: 1, green: 0.8319619298, blue: 0, alpha: 1)
    //        } else {
    //            star.tintColor = #colorLiteral(red: 0.3764705882, green: 0.3764705882, blue: 0.3764705882, alpha: 0.3)
    //        }
    //        
    //        return star
    //    }
}

extension ArticlesTableViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticlesTopTableViewCell.cellName, for: indexPath) as? ArticlesTopTableViewCell else { return UITableViewCell() }
            
            return cell
        } else if indexPath.row == 1{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticlesRatingTableViewCell.cellName, for: indexPath) as? ArticlesRatingTableViewCell else { return UITableViewCell() }
            
            return cell
        } else if indexPath.row == 2{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ArticlesDescriptionTableViewCell.cellName, for: indexPath) as? ArticlesDescriptionTableViewCell else { return UITableViewCell() }
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
