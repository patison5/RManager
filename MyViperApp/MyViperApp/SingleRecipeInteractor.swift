//
//  SingleRecipeInteractor.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

class SingleRecipeInteractor: SingleRecipeInteractorProtocol {

	weak var presenter: SingleRecipeInteractorOutputProtocol?
}

extension SingleRecipeInteractor: SingleRecipeInteractorInputProtocol {
	
}

extension SingleRecipeInteractor: SingleRecipeInteractorOutputProtocol {
	
}
