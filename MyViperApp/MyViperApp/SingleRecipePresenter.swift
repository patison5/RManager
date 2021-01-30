//
//  SingleRecipePresenter.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

class SingleRecipePresenter: SingleRecipePresenterProtocol {

	var interactor: SingleRecipeInteractorInputProtocol

	weak var controller: SingleRecipeViewControllerInputProtocol?

	var router: SingleRecipeRouterProtocol

	init(router: SingleRecipeRouterProtocol, interactor: SingleRecipeInteractorInputProtocol) {
		self.interactor = interactor
		self.router = router
	}
}

extension SingleRecipePresenter: SingleRecipeInteractorOutputProtocol {
	
}

extension SingleRecipePresenter: SingleRecipeViewControllerOutputProtocol {
	
}
