//
//  ViewController.swift
//  URLSchemeMe
//
//  Created by Tomato on 2021/02/10.
//

import UIKit

class HomeViewController: UIViewController {
	@IBAction func nextTapped(_ sender: UIButton) {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		if let controller = storyboard.instantiateViewController(withIdentifier: "NextNav") as? UINavigationController {
			if let viewController = controller.topViewController as? NextViewController {
				self.navigationController?.pushViewController(viewController, animated: true)
				//controller.pushViewController(viewController, animated: true)
			}
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func openNext() {
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		if let keyWindow = UIApplication.shared.windows.filter({$0.isKeyWindow}).first {
			if let navigationController = keyWindow.rootViewController as? UINavigationController {
				if let nextController = storyboard.instantiateViewController(withIdentifier: "NextNav") as? UINavigationController {
					if let viewController = nextController.topViewController as? NextViewController {
						navigationController.pushViewController(viewController, animated: true)
					}
				}
			}
		}
		
		/*
		guard let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController else { return }
		if let nextController = storyboard.instantiateViewController(withIdentifier: "NextNav") as? UINavigationController {
			if let viewController = nextController.topViewController as? NextViewController {
				navigationController.pushViewController(viewController, animated: true)
				print("Yes!?")
			}
		}
		*/
	}
}

