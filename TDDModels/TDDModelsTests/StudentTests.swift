//
//  StudentTests.swift
//  TDDModelsTests
//
//  Created by MohamedRafat on 7/16/22.
//

import XCTest

class StudentTests: XCTestCase {
    
    // MARK: Valid Student Info
    fileprivate let validID = 3
    fileprivate let validName = "Student"
    fileprivate let validEmail = "em@em.io"
    fileprivate let validLevel = 4
    
    // MARK: Invalid Student Info
    fileprivate let invalidID = -1
    fileprivate let invalidName = "invalid name 1"
    fileprivate let invalidEmail = "em.e.io"
    fileprivate let invalidLevel = 12
    
    
    
    func test_StudentInitWithName_ID_Email_Level(){
        let student = Student(id: validID, name: validName, email: validEmail, level: validLevel)
        
        XCTAssertNotNil(student)
    }
    
    func test_StudentInitWith_InvalidID_ValidName_ValidEmail_ValidLevel(){
        
        let expectation = self.expectation(description: "Student ID expectation mock.")
        
        let idValidator = StudentIDValidatorMock(expectation: expectation, expectedValue: invalidID)
       
        let _ = Student(id: invalidID, name: validName, email: validEmail, level: validLevel, idValidator: idValidator)
        self.waitForExpectations(timeout: 1.0, handler: nil)
//        XCTAssertNil(student)
    }
    
    func test_StudentInitWith_ValidID_InvalidName_ValidEmail_ValidLevel(){
        
        let nameValidator = StudentNameValidator()
        
        let student = Student(id: validID, name: invalidName, email: validEmail, level: validLevel, idValidator: nil, nameValidator: nameValidator)
        
        XCTAssertNil(student)
    }
    
    func test_StudnetInitWith_ValidID_ValidName_InvalidEmail_ValidLevel(){
        let emailValidator = StudentEmailValidator()
        
        let student = Student(id: validID, name: validName, email: invalidEmail, level: validLevel, idValidator: nil, nameValidator: nil, emailValidator: emailValidator)
        
        XCTAssertNil(student)
    }
    

}
