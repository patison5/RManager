//
//  HomeInteractorOutputProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import Foundation

protocol HomeInteractorOutputProtocol: AnyObject {

	func fetchDidFail()

	func recipesFetched(models: [RecipeModel])
}
