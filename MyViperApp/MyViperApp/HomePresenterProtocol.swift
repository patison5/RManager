//
//  HomePresenterProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

protocol HomePresenterProtocol: AnyObject {

	/// Маршрутизатор
	var router: HomeRouterProtocol { get set }

	/// Интерактор
	var interactor: HomeInteractorInputProtocol { get set }

	/// Контроллер
	var controller: HomeViewControllerInputProtocol? { get set }
}
