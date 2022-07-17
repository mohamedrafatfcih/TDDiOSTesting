//
//  StudentIDValidatorTests.swift
//  TDDModelsTests
//
//  Created by MohamedRafat on 7/16/22.
//

import XCTest

class StudentIDValidatorTests: XCTestCase {
    fileprivate let validID = 1
    fileprivate let validID2 = 2
    fileprivate let invalidID = 0
    fileprivate let invalidID2 = -1
    
    func test_StudentIDValidatorInit(){
        let  studentIDValidator = StudentIDValidator()
        XCTAssertNotNil(studentIDValidator)
    }
    
    func test_ValidatorWithValidID(){
        let sIDValidator = StudentIDValidator()
        XCTAssertTrue(sIDValidator.validate(validID))
    }
    
    func test_ValidatorWithInvalidID(){
        let sIDValidator = StudentIDValidator()
        XCTAssertFalse(sIDValidator.validate(invalidID))
    }
    

}
