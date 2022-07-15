//
//  OnboardingViewController.swift
//  PlantApp
//
//  Created by Eldorbek on 05/07/22.
//

import UIKit

enum Page {
    case identifyPage
    case learPage
    case readPage
}

class OnboardingViewController: UIViewController {

    private var pageNumber = 1
    private var page = Page.identifyPage
    
    lazy var mainImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.image = Images.identifyPageImage.image
//        Constants.OnboardingImages.identifyPageImage
=======
        view.image = 
        Images.identifyPageImage
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.image = 
        Images.identifyPageImage
>>>>>>> main

        return view
    }()

    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.text =  Labels.identifyPageTitleLabel.label
        view.font = .systemFont(ofSize: 19.0, weight: .bold)
        view.textColor = Colors.mainTitleColor.color
=======
        view.text = TitleLabels.identifyPageTitleLabel
        view.font = .systemFont(ofSize: 19.0, weight: .bold)
        view.textColor = Colors.mainTitleColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.text = TitleLabels.identifyPageTitleLabel
        view.font = .systemFont(ofSize: 19.0, weight: .bold)
        view.textColor = Colors.mainTitleColor
>>>>>>> main
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        view.textAlignment = .center

        return view
    }()

    lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.text = Labels.identifyPageDescription.label
=======
        view.text = DescriptionLabels.identifyPageDescription
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.text = DescriptionLabels.identifyPageDescription
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.text = DescriptionLabels.identifyPageDescription
>>>>>>> main
        view.numberOfLines = 3
        view.minimumScaleFactor = 0.7
        view.contentMode = .top
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 13.0, weight: .regular)
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.textColor = Colors.mainTitleColor.color
=======
        view.textColor = Colors.mainTitleColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.textColor = Colors.mainTitleColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.textColor = Colors.mainTitleColor
>>>>>>> main
        view.setContentHuggingPriority(.defaultLow, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultLow, for: .vertical)

        return view
    }()

    lazy var labelStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fill
        view.contentMode = .center
        view.spacing = 10

        return view
    }()

    lazy var dotImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.image = Images.identifyPageDot.image
=======
        view.image = 
        Images.identifyPageDot
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.image = 
        Images.identifyPageDot
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.image = 
        Images.identifyPageDot
>>>>>>> main
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)

        return view
    }()

    lazy var contentStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [mainImageView, labelStackView, dotImageView])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fill
        view.contentMode = .center
        view.spacing = 40

        return view
    }()
    
    lazy var nextButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Next", for: .normal)
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.backgroundColor = Colors.onboardingBtnColor.color
=======
        view.backgroundColor = Colors.onboardingBtnColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.backgroundColor = Colors.onboardingBtnColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.backgroundColor = Colors.onboardingBtnColor
>>>>>>> main
        view.setTitleColor(.white, for: .normal)
        view.addTarget(self, action: #selector(nextButtonTapped(on:)), for: .touchUpInside)

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
        view.backgroundColor = Colors.mainBgColor.color
=======
        view.backgroundColor = Colors.mainBgColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.backgroundColor = Colors.mainBgColor
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
        view.backgroundColor = Colors.mainBgColor
>>>>>>> main
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(contentStack)
        view.addSubview(nextButton)

        NSLayoutConstraint.activate([
            mainImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60.0),
            mainImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60.0),
            mainImageView.heightAnchor.constraint(equalTo: mainImageView.widthAnchor),

            contentStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            contentStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            contentStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0),
//            contentStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)
            
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -65.0),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func nextButtonTapped(on: UIButton){
        pageNumber += 1
        
        switch pageNumber{
        case 1:
            page = Page.identifyPage
        case 2:
            page = Page.learPage
        case 3:
            page = Page.readPage
        default:
<<<<<<< HEAD
            let signUpViewController = LoginPageViewController2()
=======
            let signUpViewController = FirstScreenViewController()
>>>>>>> main
            signUpViewController.modalTransitionStyle = .crossDissolve
            signUpViewController.modalPresentationStyle = .fullScreen
            present(signUpViewController, animated: true)
        }
        
        changeMainPageElements()
    }
    
    private func changeMainPageElements(){
        switch page {
        case .identifyPage:
            print("1")
        case .learPage:
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
            mainImageView.image = Images.learnPageImage.image
            titleLabel.text = Labels.learnPageTitleLabel.label
            descriptionLabel.text = Labels.learnPageDescription.label
            dotImageView.image = Images.learnPageDot.image
        case .readPage:
            mainImageView.image = Images.readPageImage.image
            titleLabel.text = Labels.readPageTitleLabel.label
            descriptionLabel.text = Labels.readPageDescription.label
            dotImageView.image = Images.readPageDot.image
=======
=======
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
>>>>>>> main
            mainImageView.image = 
            Images.learnPageImage
            titleLabel.text = TitleLabels.learnPageTitleLabel
            descriptionLabel.text = DescriptionLabels.learnPageDescription
            dotImageView.image = 
            Images.learnPageDot
        case .readPage:
            mainImageView.image = 
            Images.readPageImage
            titleLabel.text = TitleLabels.readPageTitleLabel
            descriptionLabel.text = DescriptionLabels.readPageDescription
            dotImageView.image = 
            Images.readPageDot
<<<<<<< HEAD
<<<<<<< HEAD:PlantApp/Controllers/OnboardingViewController.swift
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
>>>>>>> main:PlantApp/OnboardingViewController.swift
=======
>>>>>>> main
            nextButton.setTitle("Sign up", for: .normal)
        }
    }
}
