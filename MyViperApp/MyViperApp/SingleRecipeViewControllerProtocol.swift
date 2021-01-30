//
//  SingleRecipeViewControllerProtocol.swift
//  MyViperApp
//
//  Created by Fedor Penin on 30.01.2021.
//
import UIKit

protocol SingleRecipeViewControllerProtocol where Self: UIViewController  {

	var presenter: SingleRecipeViewControllerOutputProtocol { get set }

	var moduleView: SingleRecipeViewInputProtocol { get set }
}
