//
//  SingleRecipeView.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

class SingleRecipeView: UIView {

	weak var delegate: SingleRecipeViewDelegate?

	weak var dataSource: SingleRecipeViewDataSource?

	private let collection = StretchyHeaderCollectionView()

	// MARK: - Init

	init() {
		super.init(frame: .zero)

		backgroundColor = .cyan
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension SingleRecipeView: SingleRecipeViewProtocol {
	
}

extension SingleRecipeView: SingleRecipeViewInputProtocol {

	func update(home: HomeModel) {
		collection.data = home.recipeModels
		collection.headerView?.mainTitle = home.title

		addSubview(collection)

		collection.translatesAutoresizingMaskIntoConstraints = false
		collection.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
		collection.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
		collection.topAnchor.constraint(equalTo: topAnchor).isActive = true
		collection.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
	}
}
