//
//  ViewController.swift
//  AutoLayoutTutorial
//
//  Created by Stephen Smith on 1/17/18.
//  Copyright © 2018 Stephen Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // {} is referred to as closure, or anonymous functions
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

