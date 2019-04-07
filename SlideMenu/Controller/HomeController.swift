//
//  HomeController.swift
//  SlideMenu
//
//  Created by Aman ILYASOVICH on 5.04.2019.
//  Copyright © 2019 Aman ILYASOVICH. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
        
    }
    // MARK: - Handlers
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggl(forMenuOption: nil)
    }
}
