//
//  FirstResumeViewController.swift
//  LoginApp
//
//  Created by Кирилл on 17.06.2023.
//

import UIKit

final class FirstResumeViewController: UIViewController {

    //MARK: - IBAutlet
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var raoulDukeImage: UIImageView!
    
    private let myData = User.getMyData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        raoulDukeImage.layer.cornerRadius = 30
        
        nameLabel.text = myData.form.name
        surnameLabel.text = myData.form.surname
        ageLabel.text = String(myData.form.age)
        companyLabel.text = myData.form.company
        positionLabel.text = myData.form.position
    }
}
