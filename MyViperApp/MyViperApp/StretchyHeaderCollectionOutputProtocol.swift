//
//  StretchyHeaderCollectionOutputProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

/// Описание взаимодействия дочерней  вьюхи с родителем
protocol StretchyHeaderCollectionOutputProtocol: AnyObject {

	/// Отловить нажание на элемент коллекции
	/// - Parameter model: модель коллекции
	func collectionItemClicked(model: RecipeModel)
}
