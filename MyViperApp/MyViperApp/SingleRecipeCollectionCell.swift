//
//  SingleRecipeCollectionCell.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

final class SingleRecipeCollectionCell: UICollectionViewCell {

	//MARK: - Public properties

	var data: RecipeModel? {
		didSet {
			guard let data = data else { return }
			
			titleView.text = data.title
			imageView.image = UIImage(named: data.image)
		}
	}

	//MARK: - Private properties

	private let bluredView: UIVisualEffectView = {
		let view = CustomIntensityVisualEffectView(effect: UIBlurEffect.init(style: .regular), intensity: 1)
		view.clipsToBounds = true
		view.layer.cornerRadius = 15
		view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
		return view
	}()

	private let titleView: UILabel = {
		let label = UILabel()
		label.text = "pidor"
		label.textColor = .white
		label.font = .systemFont(ofSize: 15, weight: .regular)
		return label
	}()

	private var imageView: UIImageView = {
		let img = UIImageView()
		img.contentMode = .scaleAspectFill
		return img
	}()

	//MARK: - Initialization

	override init(frame: CGRect) {
		super.init(frame: frame)

		contentView.clipsToBounds = true
		contentView.layer.cornerRadius = 15

		setupViews()
		setupConstraints()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	//MARK: -- Private methods

	private func setupViews() {
		[imageView, bluredView, titleView].forEach {
			contentView.addSubview($0)
			$0.translatesAutoresizingMaskIntoConstraints = false
		}
	}

	private func setupConstraints() {
		NSLayoutConstraint.activate([
			imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
			imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor),

			bluredView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
			bluredView.heightAnchor.constraint(equalToConstant: 35),
			bluredView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

			titleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
			titleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
			titleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 15),
			titleView.heightAnchor.constraint(equalToConstant: 35)
		])
	}
}

