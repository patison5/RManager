//
//  HomeView.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//
import UIKit

final class HomeView: UIView {

	// MARK: - HomeViewProtocol properties

	weak var dataSource: HomeViewDataSource?
	weak var delegate: HomeViewDelegate?

	// MARK:- Private properties
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

// MARK: - HomeViewProtocol

extension HomeView: HomeViewProtocol {
	
}

extension HomeView: StretchyHeaderCollectionOutputProtocol {

	func collectionItemClicked(model: RecipeModel) {
		print("Clicked at \(model)")
		
		delegate?.recipeDidClicked(model: model)
	}
}

extension HomeView: HomeViewInputProtocol {

	func update(home: HomeModel) {
		collection.data = home.recipeModels
		collection.headerView?.mainTitle = home.title
		collection.parent = self

		addSubview(collection)

		collection.translatesAutoresizingMaskIntoConstraints = false
		collection.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
		collection.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
		collection.topAnchor.constraint(equalTo: topAnchor).isActive = true
		collection.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
	}
}
