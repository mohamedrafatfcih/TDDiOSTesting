//
//  StudentIDValidatorMock.swift
//  TDDModelsTests
//
//  Created by MohamedRafat on 7/17/22.
//

import Foundation
import XCTest

class StudentIDValidatorMock: StudentIDValidator {
    
    var expectation: XCTestExpectation?
    var expectedValue: Int?
    
    init(expectation: XCTestExpectation?, expectedValue: Int?) {
        self.expectation = expectation
        self.expectedValue = expectedValue
        super.init()
    }
    
    
    override func validate(_ value: Int) -> Bool {
        
        if let expectation = expectation, let expectedVal = expectedValue {
            if value == expectedVal {
               expectation.fulfill()
            }
        }
        return super.validate(value)
    }
    
    

}
