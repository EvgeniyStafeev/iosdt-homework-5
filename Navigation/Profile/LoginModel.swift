//
//  LoginModel.swift
//  Navigation
//
//  Created by Евгений Стафеев on 25.03.2023.
//

import UIKit

struct Login {
    var authorized: Bool
    var login: String
    var password: String

    init(authorized: Bool, login: String, password: String) {
        self.authorized = authorized
        self.login = login
        self.password = password
    }

    init(loginRealmModel: LoginRealmModel) {
        self.authorized = loginRealmModel.authorized
        self.login = loginRealmModel.login ?? ""
        self.password = loginRealmModel.password ?? ""
    }

    var keyedValues: [String: Any] {
        [
            "authorized": self.authorized,
            "login": self.login,
            "password": self.password
        ]
    }
}
