//
//  HomeViewInputProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 29.01.2021.
//

import UIKit

protocol HomeViewInputProtocol where Self: UIView {

	/// Обновить данные в collectionView и контент header'a
	func update(home: HomeModel)
}
