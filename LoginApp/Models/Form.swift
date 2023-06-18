//
//  Form.swift
//  LoginApp
//
//  Created by Кирилл on 18.06.2023.
//

import Foundation

struct User {
    let user: String
    let password: String
    let form: Person
    
    static func getMyData() -> User {
        User(
            user: "user",
            password: "password",
            form: Person(
                name: "Kirill",
                surname: "Tokarev",
                age: 33,
                company: "Origami",
                position: "PastryCook",
                ditails: "Моя креативность в стадии зарождения:)"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let position: String
    let ditails: String
    
}

