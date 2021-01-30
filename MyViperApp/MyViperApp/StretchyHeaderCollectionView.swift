//
//  StretchyHeaderCollectionView.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import UIKit

final class StretchyHeaderCollectionView: UICollectionView, UICollectionViewDelegateFlowLayout {

	// MARK: - StretchyHeaderCollectionOutputProtocol properties

	weak var parent: StretchyHeaderCollectionOutputProtocol?

	//MARK: - Public properties

	var data:[RecipeModel] = []

	//MARK: - Private properties

	var headerView: HeaderView?

	private let cellId = "cellId"
	private let headerId = "headerId"
	private let padding:CGFloat = 15

	private let tabBarView: UIView = {
		let view = UIView()
		view.backgroundColor = .cyan
		return view
	}()

	//MARK: - Initialization

	init() {
		let layout = StretchyHeaderLayout()
		layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)

		super.init(frame: .zero, collectionViewLayout: layout)

		delegate = self
		dataSource = self

		setupCollectionView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

//MARK: - UICollectionViewDelegate

extension StretchyHeaderCollectionView: UICollectionViewDelegate {

	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		let currentOffsetY = scrollView.contentOffset.y
		guard let headerView = headerView else { return }

		guard currentOffsetY < 0 else {
			headerView.bluredView.animator?.fractionComplete = 0
			return
		}

		headerView.bluredView.animator?.fractionComplete = abs(currentOffsetY + safeAreaInsets.top) / 100
	}

	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as? HeaderView
		return headerView!
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return .init(width: frame.width, height: 260)
	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return self.data.count
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCollectionCell
		cell.data = self.data[indexPath.row]

		return cell
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return .init(width: frame.width - 2 * padding, height: 120)
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		parent?.collectionItemClicked(model: data[indexPath.row])
	}
}

//MARK: - UICollectionViewDataSource

extension StretchyHeaderCollectionView: UICollectionViewDataSource {
	
}

//MARK: - private extensions

private extension StretchyHeaderCollectionView {

	func setupCollectionView() {
		backgroundColor = .white
//		contentInsetAdjustmentBehavior = .never
		layer.cornerRadius = 10
		layer.masksToBounds = true

		register(HomeCollectionCell.self, forCellWithReuseIdentifier: cellId)
		register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
	}
}
