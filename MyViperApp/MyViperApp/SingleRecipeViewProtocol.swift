//
//  SingleRecipeViewProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

protocol SingleRecipeViewProtocol {

	var delegate: SingleRecipeViewDelegate? { get set }

	var dataSource: SingleRecipeViewDataSource? { get set }
}
