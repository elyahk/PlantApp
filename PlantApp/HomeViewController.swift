//
//  HomeViewController.swift
//  PlantApp
//
//  Created by Eldorbek on 07/07/22.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Hello Taylor,"

        return view
    }()

    lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Let’s Learn More About Plants"

        return view
    }()

    lazy var profileButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    lazy var searchBarView: UISearchBar = {
        let view = UISearchBar()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Search For Plants"

        return view
    }()

    lazy var identityButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    lazy var speciesButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    lazy var articlesButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    lazy var buttonsStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [identityButton, speciesButton, articlesButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fill
        view.contentMode = .top
        view.spacing = 20.0

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(profileButton)
        view.addSubview(searchBarView)
        view.addSubview(buttonsStackView)

        view.activate(to: titleLabel, constraints: [.top(10), .left(0), .right(0)])
        titleLabel.activate(to: descriptionLabel, .bottom, .top, by: 20)
        view.activate(to: descriptionLabel, constraints: [.left(0), .right(0)])
        view.activate(to: profileButton, constraints: [.top(20.0), .right(20)])
        view.activate(to: searchBarView, constraints: [.left(40), .right(40)])
        searchBarView.activate(to: descriptionLabel, .top, .bottom, by: 20)
    }


}

enum Constraint {
    case top(CGFloat)
    case bottom(CGFloat)
    case right(CGFloat)
    case left(CGFloat)
}

enum XConstraint {
    case right
    case left
}

enum YConstraint {
    case top
    case bottom
}

extension UIView {
    func activate(to view: UIView, constraints: [Constraint] = []) {
        constraints.forEach {
            switch $0 {
            case let .top(value):
                self.topAnchor.constraint(equalTo: view.topAnchor, constant: value).isActive = true
            case let .bottom(value):
                self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -value).isActive = true
            case let .left(value):
                self.leftAnchor.constraint(equalTo: view.leftAnchor, constant: value).isActive = true
            case let .right(value):
                self.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -value).isActive = true
            }
        }
    }

    func activate(to view: UIView, _ constraint1: XConstraint, _ constraint2: XConstraint, by value: CGFloat) {
        self.constraint(constraint: constraint1).constraint(equalTo: view.constraint(constraint: constraint2), constant: value).isActive = true
    }

    func activate(to view: UIView, _ constraint1: YConstraint, _ constraint2: YConstraint, by value: CGFloat) {
        self.constraint(constraint: constraint1).constraint(equalTo: view.constraint(constraint: constraint2), constant: value).isActive = true
    }
}

extension UIView {
    func constraint(constraint: XConstraint) -> NSLayoutXAxisAnchor {
        switch constraint {
            case .right: return self.rightAnchor
            case .left: return self.leftAnchor
        }
    }

    func constraint(constraint: YConstraint) -> NSLayoutYAxisAnchor {
        switch constraint {
        case .top: return self.topAnchor
        case .bottom: return self.bottomAnchor
        }
    }
}
