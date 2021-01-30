//
//  HomeViewController.swift
//  VIPER
//
//  Created by Fedor Penin on 27.01.2021.
//
import UIKit

final class HomeViewController: UIViewController {

	var model: HomeModel = HomeModel(title: "", image: "", recipeModels: [])

	// MARK: - HomeViewControllerProtocol properties

	var presenter: HomeViewControllerOutputProtocol
	var moduleView: HomeViewInputProtocol

	let categoryCollection: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
		cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
		cv.translatesAutoresizingMaskIntoConstraints = false
		return cv
	}()

	// MARK: - Init

	init(presenter: HomeViewControllerOutputProtocol, view: HomeViewInputProtocol) {
		self.presenter = presenter
		self.moduleView = view

		super.init(nibName: nil, bundle: nil)

		title = "Home"
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		presenter.viewDidLoad()
	}

	override func loadView() {
		self.view = moduleView

//		moduleView.update()
	}
}

// MARK: - HomeViewControllerProtocol

extension HomeViewController: HomeViewControllerProtocol {
	
}

// MARK: - HomeViewDelegate

extension HomeViewController: HomeViewDelegate {
	func recipeDidClicked(model: RecipeModel) {
		presenter.recipeDidClicked(recipe: model)
	}
}

// MARK: - HomeViewDataSource

extension HomeViewController: HomeViewDataSource {
	
}

// MARK: - HomeViewControllerInputProtocol

extension HomeViewController: HomeViewControllerInputProtocol {

	func getHomeModel(home: HomeModel) {
		moduleView.update(home: home)
	}
}
