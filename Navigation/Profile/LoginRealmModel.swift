//
//  LoginRealmModel.swift
//  Navigation
//
//  Created by Евгений Стафеев on 25.03.2023.
//

import UIKit
import RealmSwift

final class LoginRealmModel: Object {
    @objc dynamic var authorized: Bool = false
    @objc dynamic var login: String?
    @objc dynamic var password: String?

    override class func primaryKey() -> String? {
        "login"
    }

    convenience init(login: Login) {
        self.init()
        self.authorized = login.authorized
        self.login = login.login
        self.password = login.password

    }
}
