//
//  RegistrationModelTestCase.swift
//  TestCaseStudyOfRegistrationFlowTests
//
//  Created by Ajit Satarkar on 04/01/24.
//

import XCTest

import XCTest
@testable import TestCaseStudyOfRegistrationFlow

class RegistrationModelTestCase: XCTestCase {
    
    var sut: UserRegistrationModelValidatorProtocol!
    
    let firstName = "Ajit"
    let lastName = "Satarkar"
    let email = "ajit.str@gmail.com"//Replace this text with any proper mail id this test case coverage will work
    let password = "12345678"
    let repeatPassword = "12345678"
    
    override func setUp() { }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testUserModelStruc_canCreateNewInstance() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertNotNil(sut)
     }
 
    func testUserFirstName_shouldPassIfValidFirstName() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidFirstName())
     }
    
    func testUserFirstName_shouldPassIfFirstNameLessThanMinLength() {
        sut = UserRegistrationModel(firstName: "S",
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidFirstName())
    }
    
    func testUserLastName_shouldPassIfValidLastName() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidLastName())
    }
    
    func testUserLastName_shouldPassIfLastNameLessThanMinLength() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: "K",
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidLastName())
    }
    
    func testUserRegistrationModel_shouldPassIfValidEmail() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidEmail())
    }
    
    func testUserRegistrationModel_shouldPassIfInValidEmail() {
        
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: "test.com",
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertFalse(sut.isValidEmail())
    }
    
    func testUserRegistrationModel_shouldPassIfValidPasswordLength() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidPasswordLength())
    }
    
    func testUserPassword_passwordAndRepeatPasswordMustMatch() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.doPasswordsMatch())
    }
    
    func testUserPassword_shouldPassIfPasswordIsValid() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        
        XCTAssertTrue(sut.isValidPassword())
    }
    
    func testUserData_shouldPassIfDataIsValid() {
        sut = UserRegistrationModel(firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        repeatPassword: repeatPassword)
        XCTAssertTrue(sut.isDataValid())
    }

}
