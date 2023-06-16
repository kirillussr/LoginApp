//
//  ViewController.swift
//  LoginApp
//
//  Created by Кирилл on 12.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userNameVC = segue.destination as? WelcomViewController else { return }
        userNameVC.welcome = userName.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
 
    //MARK: - IBAction
    
    @IBAction func toKnowUserNameButton() {
        showAlertUser(
            withTitle: "Oops!",
            andMessage: "Your name is user😉"
        )
    }
    
    @IBAction func toKnowPasswordButton() {
        showAlertUser(
            withTitle: "Oops!",
            andMessage: "Your password is password😉"
        )
    }
    
    @IBAction func logInButtonTapped() {
        if userName.text != "user" || password.text != "password" {
            showAlertUser(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            password.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        guard segue.source is WelcomViewController else { return }
        userName.text = ""
        password.text = ""
    }
}

// MARK: - UIAleetControler

private extension LoginViewController {
    
    func showAlertUser(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
