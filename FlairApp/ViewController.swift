//
//  ViewController.swift
//  FlairApp
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Christina Lenda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  /*  let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }() */

    fileprivate let stackView: UIStackView =  {
        let stack = UIStackView ()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 40
        
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*view.addSubview(stackView)
        stackView.heightAnchor.constraint(equalToConstant: view.frame.height - 100).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let ivOne = UIImageView(image: #imageLiteral(resourceName: "JacketArt"))
        let ivTwo = UIImageView(image: #imageLiteral(resourceName: "LipsArt"))
        let ivThree = UIImageView(image: #imageLiteral(resourceName: "WomanArt"))
        
        stackView.addArrangedSubview(ivOne)
        stackView.addArrangedSubview(ivTwo)
        stackView.addArrangedSubview(ivThree)
        
        ivOne.contentMode = .scaleAspectFill
        ivTwo.contentMode = .scaleAspectFill
        ivThree.contentMode = .scaleAspectFill
        
        ivOne.clipsToBounds = true
        ivTwo.clipsToBounds = true
        ivThree.clipsToBounds = true */
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: view.bounds)
        view.addSubview(scrollView)
        
        scrollView.addSubview(stackView)
        scrollView.frame = CGRect(x: 20, y: 20, width: view.frame.width - 20, height: 2175)
        stackView.heightAnchor.constraint(equalToConstant: scrollView.frame.height - 100).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 40).isActive = true
        stackView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        let ivOne = UIImageView(image: #imageLiteral(resourceName: "JacketArt"))
        let ivTwo = UIImageView(image: #imageLiteral(resourceName: "LipsArt"))
        let ivThree = UIImageView(image: #imageLiteral(resourceName: "WomanArt"))
        
        stackView.addArrangedSubview(ivOne)
        stackView.addArrangedSubview(ivTwo)
        stackView.addArrangedSubview(ivThree)
        
        ivOne.contentMode = .scaleAspectFill
        ivTwo.contentMode = .scaleAspectFill
        ivThree.contentMode = .scaleAspectFill
        
        ivOne.clipsToBounds = true
        ivTwo.clipsToBounds = true
        ivThree.clipsToBounds = true
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
    }

}

