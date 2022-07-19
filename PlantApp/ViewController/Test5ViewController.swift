//
//  Test5ViewController.swift
//  PlantApp
//
//  Created by Bekzod Qahhorov on 19/07/22.
//

import UIKit

class Test5ViewController: UIViewController {

    lazy var textFiled: UITextField = {
       let view = UITextField()
      let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        view.leftViewMode = .always
        view.leftView = paddingView
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Search For Plants "
        view.textColor = .black
        view.font = .monospacedSystemFont(ofSize: 24, weight: .regular)
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        
        return view
    }()
    lazy var firstButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("1111", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setImage(Images.redCactus.image, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    lazy var secondButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(Images.mainPageflowerImage1.image, for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    lazy var thirdButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(Images.circleCactus.image, for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    lazy var fourthButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setImage(Images.fatCactus.image, for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
  
    lazy var buttonStack: UIStackView = {
        let view = UIStackView(arrangedSubviews: [firstButton, secondButton, thirdButton , fourthButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.contentMode = .center
        view.spacing = 10

        return view
    }()
    lazy var doneButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("DONE !!!", for: .normal)
        view.backgroundColor = Colors.mainTitleColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        // Do any additional setup after loading the view.
    }
    
    private func setupSubviews() {
        view.addSubview(textFiled)
        view.addSubview(buttonStack)
        view.addSubview(doneButton)

        NSLayoutConstraint.activate([
            textFiled.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10.0),
            textFiled.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10.0),
            textFiled.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            
            buttonStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10.0),
            buttonStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10.0),
            buttonStack.topAnchor.constraint(equalTo: textFiled.bottomAnchor,constant: 20),
            
            doneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10.0),
            doneButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10.0),
            doneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 20),
           
            doneButton.heightAnchor.constraint(equalToConstant: 150),
            textFiled.heightAnchor.constraint(equalToConstant: 100),
            firstButton.heightAnchor.constraint(equalToConstant: 100),
        ])
    }

  

}
