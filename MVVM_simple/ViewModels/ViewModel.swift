//
//  ViewModel.swift
//  MVVM_simple
//
//  Created by Kirill Khomytsevych on 01.04.2023.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)

    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login failed"
            statusColor.value = UIColor.red
        } else {
            statusText.value = "Login successful"
            statusColor.value = UIColor.green
        }
    }
}
