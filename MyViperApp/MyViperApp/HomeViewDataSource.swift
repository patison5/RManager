//
//  HomeViewDataSource.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import Foundation

/// Описание источника данных
protocol HomeViewDataSource: AnyObject {

	/// Модель данных 
	var model: HomeModel { get set }
}
