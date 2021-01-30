//
//  CustomIntensityVisualEffectView.swift
//  MyViperApp
//
//  Created by Fedor Penin on 29.01.2021.
//

import UIKit

final class CustomIntensityVisualEffectView: UIVisualEffectView {
	/// Create visual effect view with given effect and its intensity
	///
	/// - Parameters:
	///   - effect: visual effect, eg UIBlurEffect(style: .dark)
	///   - intensity: custom intensity from 0.0 (no effect) to 1.0 (full effect) using linear scale
	init(effect: UIVisualEffect, intensity: CGFloat) {
		theEffect = effect
		customIntensity = intensity
		super.init(effect: nil)
	}

	required init?(coder aDecoder: NSCoder) { nil }

	deinit {
		animator?.stopAnimation(true)
	}

	override func draw(_ rect: CGRect) {
		super.draw(rect)
		effect = nil
		animator?.stopAnimation(true)
		animator = UIViewPropertyAnimator(duration: 1, curve: .linear) { [weak self] in
			self?.effect = self?.theEffect
		}
		animator?.fractionComplete = customIntensity
	}

	private let theEffect: UIVisualEffect
	var customIntensity: CGFloat
	var animator: UIViewPropertyAnimator?
}

