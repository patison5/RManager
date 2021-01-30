//
//  SingleRecipeAssemblyProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//

import UIKit

protocol SingleRecipeAssemblyProtocol: AnyObject {

	/// Собрать модуль
	static func module () -> UIViewController
}
