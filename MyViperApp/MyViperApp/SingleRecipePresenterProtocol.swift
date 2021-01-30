//
//  SingleRecipePresenterProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

protocol SingleRecipePresenterProtocol {

	var interactor: SingleRecipeInteractorInputProtocol { get set }

	var controller: SingleRecipeViewControllerInputProtocol? { get set }

	var router: SingleRecipeRouterProtocol { get set }
}
