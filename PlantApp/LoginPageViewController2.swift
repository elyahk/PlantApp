//
//  LoginPageViewController2.swift
//  PlantApp
//
//  Created by user on 07/07/22.
//

import UIKit
import SkyFloatingLabelTextField
class LoginPageViewController2: UIViewController {
    
    private lazy var labelsStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [mainLabel,descriptionLabel])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 10
        view.distribution = .fill
        return view
    }()
        
    private lazy var mainLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = K.TitleLabels.loginPageTitleLabel
        view.textColor = K.Colors.mainTitleColor
       view.font = UIFont(name: "'SF Pro Text'", size: 30.0)
        view.font = .systemFont(ofSize: 30.0, weight: .bold)
        return view
    }()
    private lazy var descriptionLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = K.DescriptionLabels.loginPageDescription
        view.textColor = K.Colors.mainSubtitleColor
        view.font = .systemFont(ofSize: 16.0, weight: .regular)
        view.font = UIFont(name: "'SF Pro Text'", size: 16.0)
        return view
    }()

    //MARK: - TextField && TextField's Image  with label
    
    
    
    
    private lazy var mainStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [textFieldStack])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 20
        view.distribution = .fill
        return view
    }()
    
    
    private lazy var textFieldStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [nameTextField])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 1
        view.distribution = .fill
        return view
    }()
        
   
    private lazy var nameTextField: UITextField = {
        var view = SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 10, y: 10, width: 200, height: 45))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Username"
        view.textColor = K.Colors.mainTitleColor
        view.selectedTitleColor = K.Colors.onboardingBtnColor!
        view.iconType = .image
        view.iconImage = UIImage(systemName: "checkmark")
        view.selectedIconColor = K.Colors.onboardingBtnColor!
        view.selectedLineColor = K.Colors.onboardingBtnColor!
        view.iconMarginLeft = 40.0
        return view
    }()
    
    private lazy var textFiledsImage: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = .init(systemName: "checkmark")
        view.tintColor = K.Colors.onboardingBtnColor
       
        return view
    }()
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = K.Colors.mainBgColor
        setupSubview()
    }
    
    private func setupSubview() {
        view.addSubview(labelsStack)
        view.addSubview(mainStack)
        NSLayoutConstraint.activate([
            labelsStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            labelsStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            labelsStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            mainStack.topAnchor.constraint(equalTo: labelsStack.bottomAnchor, constant: 25),
            mainStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            mainStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
        ])
        
    }
    
  
}

