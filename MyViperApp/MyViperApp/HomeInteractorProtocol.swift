//
//  HomeInteractorProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

protocol HomeInteractorProtocol: AnyObject {
	
	/// презентер модуля
	var presenter: HomeInteractorOutputProtocol? { get set }
}
