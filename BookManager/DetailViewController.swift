//
//  DetailViewController.swift
//  BookManager
//
//  Created by 강민혜 on 7/21/22.
//

import UIKit

class DetailViewController: UIViewController {

    static var identifier = "DetailViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backButtonTitle = " "
        
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: MoreDetailViewController.identifier) as! MoreDetailViewController
        self.navigationController?.pushViewController(pushVC, animated: true)
    
        
        
    }
    
    

}
