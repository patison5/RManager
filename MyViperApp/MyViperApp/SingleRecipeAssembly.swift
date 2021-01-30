//
//  SingleRecipeAssembly.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

class SingleRecipeAssembly: SingleRecipeAssemblyProtocol {
	
	static func module() -> UIViewController {
		let view = SingleRecipeView()
		let interactor = SingleRecipeInteractor()
		let router = SingleRecipeRouter()
		let presenter = SingleRecipePresenter(router: router, interactor: interactor)
		let controller = SingleRecipeViewController(presenter: presenter, view: view)

		interactor.presenter = presenter

		presenter.controller = controller
		presenter.router = router
		presenter.interactor = interactor

		controller.presenter = presenter
		controller.moduleView = view

		view.dataSource = controller
		view.delegate = controller

		return controller
	}
}
