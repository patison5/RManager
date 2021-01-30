//
//  HomeInteractor.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

final class HomeInteractor: HomeInteractorProtocol {

	// MARK: - HomeInteractorProtocol Properties

	weak var presenter: HomeInteractorOutputProtocol?
}

// MARK: - HomeInteractorProtocol

extension HomeInteractor: HomeInteractorInputProtocol {

	func fetch(type: DataType) {
		switch type {
		case .recipes: getRecipes()
		case .userInfo: getRecipes()
		case .someElse: getRecipes()
		}
	}
}

private extension HomeInteractor {

	func getRecipes () {
		let models: [RecipeModel]?  = [
			RecipeModel(title: "Трюфель гарганзола", image: "f_2"),
			RecipeModel(title: "Рафаэлло", image: "f_3"),
			RecipeModel(title: "Трюфель гарганзола", image: "f_4"),
			RecipeModel(title: "Рафаэлло", image: "f_2"),
			RecipeModel(title: "Трюфель гарганзола", image: "f_3"),
			RecipeModel(title: "Рафаэлло", image: "f_4"),
			RecipeModel(title: "Рафаэлло", image: "f_2"),
			RecipeModel(title: "Трюфель гарганзола", image: "f_3"),
			RecipeModel(title: "Рафаэлло", image: "f_4"),
		]

		if let models = models {
			presenter?.recipesFetched(models: models)
		} else {
			presenter?.fetchDidFail()
		}
	}
}
