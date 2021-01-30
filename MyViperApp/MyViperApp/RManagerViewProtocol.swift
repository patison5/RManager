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
	var dataSource: RManagerViewDataSource? { get set }

	/// Обработчик нажатий вью
	var delegate: RManagerViewDelegate? { get set }
}
