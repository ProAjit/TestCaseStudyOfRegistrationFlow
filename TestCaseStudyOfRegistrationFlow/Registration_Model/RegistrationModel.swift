//
//  RegistrationModel.swift
//  TestCaseStudyOfRegistrationFlow
//
//  Created by Ajit Satarkar on 04/01/24.
//

import Foundation

struct UserRegistrationModel {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let repeatPassword: String
}

extension UserRegistrationModel : UserRegistrationModelValidatorProtocol {
    
    func isValidFirstName() -> Bool {
        return firstName.count > 1
    }
    
    func isValidLastName() -> Bool {
        return lastName.count > 1
    }

    func isValidEmail() -> Bool {
        return email.contains("@") && email.contains(".")
    }

    func isValidPasswordLength() -> Bool {
        return password.count >= 8 && password.count <= 16
    }
    
    func doPasswordsMatch() -> Bool {
        return password == repeatPassword
    }
    
    func isValidPassword() -> Bool {
        return isValidPasswordLength() && doPasswordsMatch()
    }
    
    func isDataValid() -> Bool {
        return isValidFirstName() && isValidLastName() && isValidEmail() && isValidPasswordLength() &&
        doPasswordsMatch()
    }
}
