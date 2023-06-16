//
//  WelcomViewController.swift
//  LoginApp
//
//  Created by Кирилл on 12.06.2023.
//

import UIKit

final class WelcomViewController: UIViewController {
    
    //MARK: - IBOutlets

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome! \(welcome ?? "")"
    }
    
    //MARK: - IBAction
    
    @IBAction func logOutButtonTappet() {
        dismiss(animated: true)
    }
}