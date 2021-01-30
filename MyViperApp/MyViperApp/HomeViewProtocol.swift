//
//  HomeViewProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import UIKit

/// Описание взаимодействия с вью
protocol HomeViewProtocol {

	/// Источник данных вью
	var dataSource: HomeViewDataSource? { get set }

	/// Обработчик нажатий вью
	var delegate: HomeViewDelegate? { get set }
}
