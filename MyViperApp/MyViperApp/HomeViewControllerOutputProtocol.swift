//
//  HomeViewControllerOutputProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import Foundation

protocol HomeViewControllerOutputProtocol: AnyObject {

	func viewDidLoad()

	func recipeDidClicked(recipe: RecipeModel)
}
