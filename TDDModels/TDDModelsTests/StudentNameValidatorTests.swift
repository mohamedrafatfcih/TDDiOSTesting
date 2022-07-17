//
//  StudentNameValidatorTests.swift
//  TDDModelsTests
//
//  Created by MohamedRafat on 7/16/22.
//

import XCTest

class StudentNameValidatorTests: XCTestCase {
    
    fileprivate let validName = "validName"
    fileprivate let invalidName = "invalid name"
    fileprivate let invalidName2 = "invalid name 2"

    func test_StudentNameValidatorInit(){
        let nameValidator = StudentNameValidator()
        XCTAssertNotNil(nameValidator)
    }
    
    func test_NameValidtorWithValidName(){
        let nameValidator = StudentNameValidator()
        XCTAssertTrue(nameValidator.validate(validName))
    }
    
    func test_NameValidatorWithInvalidName(){
        let nameValidator = StudentNameValidator()
        XCTAssertFalse(nameValidator.validate(invalidName))
    }
    
}
