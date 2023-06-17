//
//  ViewController.swift
//  LoginApp
//
//  Created by Кирилл on 12.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    private let user = "user"
    private let password = "password"
    
    //MARK: - Override Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userNameVC = segue.destination as? WelcomViewController else { return }
        userNameVC.welcome = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBAction
    
    @IBAction func logInButtonTapped() {
        guard userNameTextField.text == user, userPasswordTextField.text == password else {
            showAlertUser(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: userPasswordTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlertUser(title: "Oops!", message: "Your name is \(user)😉")
        : showAlertUser(title: "Oops!", message: "Your password is \(password)😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        userNameTextField.text = ""
        userPasswordTextField.text = ""
    }
}

// MARK: - UIAlertController

private extension LoginViewController {
    
    func showAlertUser(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
