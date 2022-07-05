//
//  FirebaseServices.swift
//  TasksWithFirebase
//
//  Created by Максим Боталов on 05.07.2022.
//

import Foundation
import FirebaseAuth

class FirebaseServices {
    static let shared = FirebaseServices()
    let auth = Auth.auth()
    
    func createUser(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { res, error in
            guard let user = res?.user, error == nil else  {
                print(error?.localizedDescription as Any)
                return
            }
            print(user.email!)
        }
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { res, error in
            guard let user = res?.user else {
                print(error?.localizedDescription as Any)
                return
            }
            print(user.email!)
        }
    }
}
