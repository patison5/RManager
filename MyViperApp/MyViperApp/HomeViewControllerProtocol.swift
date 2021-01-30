//
//  HomeViewControllerProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//

import UIKit

protocol HomeViewControllerProtocol where Self: UIViewController {

	/// Презентер
	var presenter: HomeViewControllerOutputProtocol { get set }

	/// Вьюха
	var moduleView: HomeViewInputProtocol { get set }
}
