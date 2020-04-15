//
//  ExampleViewController.swift
//  TwoWayBondageDemo
//
//  Created by Vesela Ilchevska on 14.04.20.
//  Copyright © 2020 Vesela Ilchevska. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var welcomeLabel: UILabel!
    @IBOutlet private weak var broccoliSwitch: UISwitch!
    @IBOutlet private weak var iceCreamSwitch: UISwitch!
    
    // MARK: - Private
    private var viewModel: ExampleViewModel = ExampleViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        bindEvents()
    }
    
    // MARK: - Private
    private func bindEvents() {
        nameTextField.bind(with: viewModel.name)
        broccoliSwitch.bind(with: viewModel.isBroccoliLover)
        
        viewModel.isIceCreamLover.bindAndFire{ [weak self] value in
            self?.iceCreamSwitch.setOn(value, animated: true)
        }
        
        viewModel.isBroccoliLover.bind { [weak self] isBroccoliLover in
            self?.welcomeLabel.backgroundColor = isBroccoliLover ? .systemGreen : .white
        }
        
        viewModel.name.bind { [weak self] name in
            self?.welcomeLabel.text = name.count > 0 ? "Hello, \(name)!" : "Hello!"
        }
    }
}

