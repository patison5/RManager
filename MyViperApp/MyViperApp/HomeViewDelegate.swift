//
//  HomeViewDelegate.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import Foundation

protocol HomeViewDelegate: AnyObject {

	func recipeDidClicked(model: RecipeModel)
}
