//
//  SingleRecipeViewController.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

class SingleRecipeViewController: UIViewController {

	var presenter: SingleRecipeViewControllerOutputProtocol

	var moduleView: SingleRecipeViewInputProtocol

	init(presenter: SingleRecipeViewControllerOutputProtocol, view: SingleRecipeViewInputProtocol) {
		self.presenter = presenter
		self.moduleView = view

		super.init(nibName: nil, bundle: nil)

		title = "Single"
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()

//		presenter.viewDidLoad()
	}

	override func loadView() {
		self.view = moduleView

//		moduleView.update()
	}
}

extension SingleRecipeViewController: SingleRecipeViewControllerProtocol {
	
}


extension SingleRecipeViewController: SingleRecipeViewDelegate {
	
}

extension SingleRecipeViewController: SingleRecipeViewDataSource {
	
}

extension SingleRecipeViewController: SingleRecipeViewControllerInputProtocol {
	
}
