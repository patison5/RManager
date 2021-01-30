//
//  SingleRecipeHeaderView.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

final class SingleRecipeHeaderView: UICollectionReusableView {

	//MARK:- Public properties

	let bluredView = CustomIntensityVisualEffectView(effect: UIBlurEffect.init(style: .regular), intensity: 0)

	var mainTitle: String? {
		didSet {
			guard let title = mainTitle else { return }
			mainTitleLabel.text = title
		}
	}

	//MARK:- Private properties

	private let gradientContainer = UIView()
	private let stackView = UIStackView()

	private let imageView: UIImageView = {
		let image = UIImageView(image: #imageLiteral(resourceName: "f_2"))
		image.contentMode = .scaleAspectFill
		return image
	}()

	private let mainTitleLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 24, weight: .bold)
		label.textColor = .white
		label.text = "Мои рецепты"
		return label
	}()

	private let subtitleLable: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 12, weight: .regular)
		label.numberOfLines = 0
		label.textColor = .white
		return label
	}()

	private let gradientLayer: CAGradientLayer = {
		let layer = CAGradientLayer()
		layer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
		layer.locations = [0.5, 1]
		return layer
	}()

	//MARK:- Init

	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

		addSubview(imageView)
		addSubview(bluredView)
		addSubview(gradientContainer)
		addSubview(stackView)

		layer.cornerRadius = 20
		layer.masksToBounds = true

		gradientContainer.layer.addSublayer(gradientLayer)

		[mainTitleLabel,subtitleLable].forEach({stackView.addArrangedSubview($0)})

		imageView.fillSuperView()
		bluredView.fillSuperView()
		setupViews()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	//MARK: - Private methods

	private func setupViews () {
		gradientLayer.frame = self.bounds
		gradientLayer.frame.origin.y -= bounds.height

		gradientContainer.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)

		stackView.axis = .vertical
		stackView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: -16, right: -16))
	}
}


