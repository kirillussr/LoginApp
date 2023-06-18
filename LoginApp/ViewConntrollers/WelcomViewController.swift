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
    
    private let myData = User.getMyData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(myData.form.name) \(myData.form.surname)!"
    }
}
