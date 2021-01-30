//
//  HomeAssemblyProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 28.01.2021.
//
import UIKit

protocol HomeAssemblyProtocol: AnyObject {

	/// Собрать модуль
	static func module () -> UIViewController
}
