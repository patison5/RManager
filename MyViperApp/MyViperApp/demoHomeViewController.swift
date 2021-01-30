//
//  demoHomeViewController.swift
//  MyViperApp
//
//  Created by Fedor Penin on 29.01.2021.
//

import UIKit

final class demoHomeViewController: UIViewController {
	override func loadView() {
		self.view = StretchyHeaderCollectionView()
	}
}
