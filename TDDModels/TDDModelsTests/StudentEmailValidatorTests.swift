//
//  StudentEmailValidatorTests.swift
//  TDDModelsTests
//
//  Created by MohamedRafat on 7/16/22.
//

import XCTest

class StudentEmailValidatorTests: XCTestCase {

    fileprivate let validEmail = "em@em.com"
    fileprivate let invalidEmail = "em.e.c"
    
    
    func test_StudentEmailValidatorInit(){
        let emailValidator = StudentEmailValidator()
        XCTAssertNotNil(emailValidator)
    }
    
    func test_EmailValidatorWithValidEmail(){
        let emailValidator = StudentEmailValidator()
        XCTAssertTrue(emailValidator.validate(validEmail))
    }
    
    func test_EmailValidatorWithInvalidEmail(){
        let emailValidator = StudentEmailValidator()
        XCTAssertFalse(emailValidator.validate(invalidEmail))
        
    }

}
