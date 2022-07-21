//
//  SearchViewController.swift
//  BookManager
//
//  Created by 강민혜 on 7/21/22.
//

import UIKit

class SearchViewController: UIViewController {
    
    static var identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNav()
        
    }
    
    func configureNav() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonTapped))
    }
    
    @objc
    func closeButtonTapped() {
        self.dismiss(animated: true)
    }
 
}
