//
//  User.swift
//  MVVM_simple
//
//  Created by Kirill Khomytsevych on 01.04.2023.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "Kirill", password: "123")
    ]
}
