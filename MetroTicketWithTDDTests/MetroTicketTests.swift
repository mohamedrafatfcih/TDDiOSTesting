//
//  MetroTicketTests.swift
//  MetroTicketWithTDDTests
//
//  Created by MohamedRafat on 7/12/22.
//

import XCTest

class MetroTicketTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_InitOldAgePeopleTicketNotNil(){
        let oldPeopleTicket = MetroTicket(type: .OldPeople)
        XCTAssertNotNil(oldPeopleTicket)
    }
    
    func test_InitTeenageTicketNotNil(){
        let teenageTicket = MetroTicket(type: .Teenage)
        XCTAssertNotNil(teenageTicket)
    }
    
    func test_InitChildrenTicketNotNil(){
        let childrenTicket = MetroTicket(type: .Children)
        XCTAssertNotNil(childrenTicket)
    }
}


// MARK:- Assert assigned types.
extension MetroTicketTests{
    
    func test_OldPeopleTicketTypeSetCorrectly(){
        let oldPeopleTicket = MetroTicket(type: .OldPeople)
        XCTAssertEqual(oldPeopleTicket.type, .OldPeople)
    }
    
    func test_TeenageTicketTypeSetCorrectly(){
        let teenageTicket = MetroTicket(type: .Teenage)
        XCTAssertEqual(teenageTicket.type, .Teenage)
    }
    
    func test_ChildrenTicketTypeSetCorreclty(){
        let childrenTicket = MetroTicket(type: .Children)
        XCTAssertEqual(childrenTicket.type, .Children)
    }
}
