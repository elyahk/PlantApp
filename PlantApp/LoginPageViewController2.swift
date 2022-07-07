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
//        view.heightAnchor.constraint(equalToConstant: 30.0)
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
        var view = UIStackView(arrangedSubviews:[
            labelsStack,
            nameTextFieldStack,
            passwordTextFieldStack,
            mainCheckboxStack,
            loginButton,
           
        ])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 25
        view.distribution = .fill
        return view
    }()
    
    private lazy var nameTextFieldStack: UIStackView = {
            var view = UIStackView(arrangedSubviews: [nameTextField,textFiledsImage])
            view.translatesAutoresizingMaskIntoConstraints = false
            view.axis = .horizontal
            view.spacing = 0
            view.distribution = .fillProportionally
            return view
    }()
    
    private lazy var nameTextField: UITextField = {
        var view = SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 10, y: 10, width: 200, height: 45))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Username"
        view.textColor = K.Colors.mainTitleColor
        view.selectedTitleColor = K.Colors.onboardingBtnColor!
        view.selectedLineColor = K.Colors.onboardingBtnColor!
        view.textAlignment = .left
        return view
    }()
    private lazy var textFiledsImage: UIImageView = {
           var view = UIImageView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.image = .init(systemName: "checkmark")
           view.tintColor = K.Colors.onboardingBtnColor
           view.widthAnchor.constraint(equalToConstant: 14).isActive = true
           return view
       }()
    
    private lazy var passwordTextFieldStack: UIStackView = {
            var view = UIStackView(arrangedSubviews: [passwordTextField,textFiledsImage2])
            view.translatesAutoresizingMaskIntoConstraints = false
            view.axis = .horizontal
            view.spacing = 0
            view.distribution = .fillProportionally
            return view
    }()
    

    private lazy var passwordTextField: UITextField = {
        var view = SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 10, y: 10, width: 200, height: 45))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "password"
        view.textColor = K.Colors.mainTitleColor
        view.selectedTitleColor = K.Colors.onboardingBtnColor!
        view.selectedLineColor = K.Colors.onboardingBtnColor!
        view.selectedLineHeight = 1.0
        
        return view
    }()
    private lazy var textFiledsImage2: UIImageView = {
           var view = UIImageView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.image = .init(systemName: "checkmark")
           view.tintColor = K.Colors.onboardingBtnColor
           view.widthAnchor.constraint(equalToConstant: 14).isActive = true
           return view
       }()
    
    //MARK: - checkbox and login Button
    
    private lazy var mainCheckboxStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [secondCheckboxStack,forgotPasswordButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 25
        view.distribution = .fillEqually
        return view
    }()
    
    private lazy var secondCheckboxStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [checkbox,checkboxTitle])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 5
        view.distribution = .fill
        return view
    }()
    
    private lazy var checkbox: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 15).isActive = true
        view.widthAnchor.constraint(equalToConstant: 15).isActive = true
        view.layer.borderWidth = 2
        view.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self, action: #selector(buttonChecked), for: .touchUpInside)
        return view
    }()
    
    private lazy var checkboxTitle: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Remember me"
        view.textColor = K.Colors.mainSubtitleColor
        view.font = .systemFont(ofSize: 11.0, weight: .regular)
        return view
    }()
    
    
    
    
    private lazy var forgotPasswordButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Forgot Password?", for: .normal)
        view.setTitleColor(K.Colors.mainSubtitleColor, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 12.0, weight: .medium)
        view.layer.borderWidth = 0.0
        view.contentHorizontalAlignment = .right
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Login", for: .normal)
        view.backgroundColor = K.Colors.onboardingBtnColor
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        view.contentHorizontalAlignment = .center
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        view.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        return view
    }()
    
    //MARK: - accaunt views //
    
    private lazy var accauntStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [accauntLabel,signUpButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 0
        view.distribution = .fill
//        view.contentMode = .center
//        view.alignment = .center
        return view
    }()
    
    private lazy var accauntLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Don’t Have Account?"
        view.textColor = K.Colors.mainSubtitleColor
        view.font = .systemFont(ofSize: 11.0, weight: .regular)
//        view.textAlignment = .right
        return view
    }()
    
    private lazy var signUpButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(K.Colors.onboardingBtnColor, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 12.0, weight: .bold)
        view.layer.borderWidth = 0.0
        view.backgroundColor = .clear
//        view.contentHorizontalAlignment = .left
        
        return view
    }()
    
    
    
    
    //   image If i cant do with  library
    //
    //
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = K.Colors.mainBgColor
        setupSubview()
    }
    
    private func setupSubview() {
//        view.addSubview(labelsStack)
        view.addSubview(mainStack)
        view.addSubview(accauntStack)
        NSLayoutConstraint.activate([
//            labelsStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//            labelsStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
//            labelsStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            mainStack.topAnchor.constraint(equalTo:view.topAnchor,constant: 25),
            mainStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            mainStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            mainStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.57),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            accauntStack.topAnchor.constraint(equalTo: mainStack.bottomAnchor, constant: 15),
            accauntStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
    @objc private func buttonChecked() {
        if checkbox.currentImage == UIImage.init(systemName: "checkmark" ){
            checkbox.setImage(nil, for: .normal)
        } else {
            checkbox.setImage(.init(systemName: "checkmark"), for: .normal)
        }
            
    }
    
    @objc func loginButtonTapped() {
        if nameTextField.text != "" && passwordTextField.text != ""  && checkbox.currentImage != nil {
             let vc = mainViewController()
            vc.modalTransitionStyle = .flipHorizontal
            vc.modalPresentationStyle = .fullScreen
            vc.mainLabel.text = "Hello \(String(describing: nameTextField.text!))"
            present(vc, animated: true)
        } else {
            showAlert()
        }
        
    }
    func showAlert() {
        let alert = UIAlertController(title: "Eror", message: "please check the checkbox and write somethink", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

