//
//  Test4ViewController.swift
//  PlantApp
//
//  Created by Bekzod Qahhorov on 19/07/22.
//

import UIKit

class Test4ViewController: UIViewController {

    private lazy var label: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "hello"
        view.font = .monospacedSystemFont(ofSize: 32, weight: .bold)
        view.textColor = .black
        return view
    }()
    
    lazy var mainImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = Images.identifyPageImage.image

        return view
    }()
    lazy var nextButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("OK", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    
    private func setupSubviews() {
        view.addSubview(label)
        view.addSubview(nextButton)
        view.addSubview(mainImageView)

        NSLayoutConstraint.activate([
            mainImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10.0),
            mainImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10.0),
            mainImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: mainImageView.bottomAnchor,constant: 35),
            
           
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -65.0),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func nextButtonTapped() {
        let VC =  Test5ViewController()
        navigationController?.pushViewController(VC, animated: true)
    }

}
