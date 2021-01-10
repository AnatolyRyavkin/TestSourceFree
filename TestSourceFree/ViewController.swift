//
//  ViewController.swift
//  TestSourceFree
//
//  Created by 18855353 on 10/1/21.
//

import UIKit

class ViewController: UIViewController {

	var label: UILabel

	init(text: String) {
		label = UILabel(frame: CGRect.zero)
		super.init(nibName: nil, bundle: nil)
		label.text = text
		label.textAlignment = .center
		label.font = UIFont.systemFont(ofSize: 40)
		label.textColor = .white
		label.backgroundColor = UIColor.darkGray
		label.translatesAutoresizingMaskIntoConstraints = false
		self.view.addSubview(label)
	}

	required init?(coder: NSCoder) {
		label = UILabel(frame: CGRect.zero)
		super.init(coder: coder)
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		let layouts = [NSLayoutConstraint(item: label, attribute: .trailing,
										  relatedBy: .equal,
										  toItem: view,
										  attribute: .trailing,
										  multiplier: 1,
										  constant: -20),
					   NSLayoutConstraint(item: label, attribute: .leading,
										  relatedBy: .equal,
										  toItem: view,
										  attribute: .leading,
										  multiplier: 1,
										  constant: 20),
					   NSLayoutConstraint(item: label, attribute: .bottom,
										  relatedBy: .equal,
										  toItem: view,
										  attribute: .bottom,
										  multiplier: 1,
										  constant: -20),
					   NSLayoutConstraint(item: label, attribute: .top,
										  relatedBy: .equal,
										  toItem: view,
										  attribute: .top,
										  multiplier: 1,
										  constant: 20)]
		NSLayoutConstraint.activate(layouts)
	}

}
