//
//  ViewController.swift
//  Challenge42SiblingViewLayoutNoIB
//
//  Created by Herve Desrosiers on 2020-02-27.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedView()
        setupGreenView()
        setupBlueView()
    }
    
    private func setupRedView() {
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
        ])
    }
    
    private func setupGreenView() {
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 25),
            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            greenView.heightAnchor.constraint(equalTo: redView.heightAnchor)
        ])
    }
    
    private func setupBlueView() {
        view.addSubview(blueView)
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 25),
            blueView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            blueView.heightAnchor.constraint(equalTo: redView.heightAnchor)
        ])
    }

    private let redView: UIView = {
        let rv = UIView()
        rv.backgroundColor = .red
        rv.translatesAutoresizingMaskIntoConstraints = false
        return rv
    }()
    
    private let greenView: UIView = {
        let gv = UIView()
        gv.backgroundColor = .green
        gv.translatesAutoresizingMaskIntoConstraints = false
        return gv
    }()
    
    private let blueView: UIView = {
        let bv = UIView()
        bv.backgroundColor = .blue
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()

}

