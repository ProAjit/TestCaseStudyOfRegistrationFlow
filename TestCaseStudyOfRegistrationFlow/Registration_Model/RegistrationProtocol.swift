//
//  RegistrationProtocol.swift
//  TestCaseStudyOfRegistrationFlow
//
//  Created by Ajit Satarkar on 04/01/24.
//

import Foundation

protocol UserRegistrationModelValidatorProtocol {
    func isValidFirstName() -> Bool
    func isValidLastName() -> Bool
    func isValidEmail() -> Bool
    func isValidPasswordLength() -> Bool
    func doPasswordsMatch() -> Bool
    func isValidPassword() -> Bool
    func isDataValid() -> Bool
}
