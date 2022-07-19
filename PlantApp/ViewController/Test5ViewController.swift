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
        view.font = .monospacedSystemFont(ofSize: 14, weight: .regular)
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        
        return view
    }()
    lazy var firstButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("1", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    lazy var secondButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("2", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    lazy var thirdButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("3", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    lazy var fourthButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("4", for: .normal)
        view.backgroundColor = Colors.onboardingBtnColor.color
        view.setTitleColor(.white, for: .normal)
//        view.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}
