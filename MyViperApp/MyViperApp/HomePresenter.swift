//
//  HomePresenter.swift
//  VIPER
//
//  Created by Fedor Penin on 27.01.2021.
//

import Foundation
import UIKit

/// Модуль подготовки данных к представлению
final class HomePresenter: HomePresenterProtocol {

	// MARK: - PresenterProtocol properties

	var router: HomeRouterProtocol
	var interactor: HomeInteractorInputProtocol
	weak var controller: HomeViewControllerInputProtocol?

	// MARK: - Init

	/// Иницализатор
	/// - Parameters:
	///   - router: Маршрушизатор
	///   - interactor: Интерактор
	init(router: HomeRouterProtocol, interactor: HomeInteractorInputProtocol) {
		self.router = router
		self.interactor = interactor
	}
}

// MARK: - HomeViewControllerOutputProtocol

extension HomePresenter: HomeViewControllerOutputProtocol {

	func viewDidLoad() {
		self.interactor.fetch(type: .recipes)
	}

	func recipeDidClicked(recipe: RecipeModel) {
		print("Presenter did clicked \(recipe)")
	}
}

// MARK: - HomeInteractorOutputProtocol

extension HomePresenter: HomeInteractorOutputProtocol {

	func fetchDidFail() {
		print("fetch was failed...")
	}

	func recipesFetched(models: [RecipeModel]) {
		controller?.getHomeModel(home: HomeModel(title: "Мои рецепты", image: "f_2", recipeModels: models))
	}
}
