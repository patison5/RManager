//
//  HomeInteractorInputProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 29.01.2021.
//
enum DataType {
	case userInfo
	case recipes
	case someElse
}

protocol HomeInteractorInputProtocol {

	func fetch(type: DataType)
}
