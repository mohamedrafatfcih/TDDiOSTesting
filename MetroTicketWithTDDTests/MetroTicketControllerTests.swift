//
//  MetroTicketControllerTests.swift
//  MetroTicketWithTDDTests
//
//  Created by MohamedRafat on 7/12/22.
//

import XCTest

class MetroTicketControllerTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    func test_MetroTicketControllerNotNil(){
        let mtc = MetroTicketController()
        XCTAssertNotNil(mtc)
    }
    
    func test_OldPeopleTicketsListInMTCNotNil(){
        let mtc = MetroTicketController()
        XCTAssertNotNil(mtc.oldPeopleTickets)
    }
    
    func test_TeenageTicketsListInMTCNotNil(){
        let mtc = MetroTicketController()
        XCTAssertNotNil(mtc.teenageTickets)
    }
    
    func test_ChildrenTicketsListInMTCNotNil(){
        let mtc = MetroTicketController()
        XCTAssertNotNil(mtc.childrenTickets)
    }
}


/// MARK: - Metro Controller Tickets tests
extension MetroTicketControllerTests{
    
    func test_OldPeopleTicketsInMTCAreEmpty(){
        let mtc = MetroTicketController()
        XCTAssertEqual(mtc.oldPeopleTickets?.count, 0)
    }
    
    func test_TeenageTicketsInMTCAreEmpty(){
        let mtc = MetroTicketController()
        XCTAssertEqual(mtc.teenageTickets?.count, 0)
    }
    
    func test_childrenTicketsInMTCAreEmpty(){
        let mtc = MetroTicketController()
        XCTAssertEqual(mtc.childrenTickets?.count, 0)
    }
    
}

/// MARK: - Test Adding Tickets
extension MetroTicketControllerTests {
    
    func test_AddingOneOldPeopleTicket(){
        let mtc = MetroTicketController()
        let oldPeopleTicket = MetroTicket(type: .OldPeople)
        mtc.addOldPeopleTicket(oldPeopleTicket)
        XCTAssertEqual(mtc.oldPeopleTickets?.count, 1)
    }
    
    func test_AddingOneTeenageTicket(){
        let mtc = MetroTicketController()
        let teenageTicket = MetroTicket(type: .Teenage)
        mtc.addTeenageTicket(teenageTicket)
        XCTAssertEqual(mtc.teenageTickets?.count, 1)
    }
    
    func test_AddingChildrenTicket(){
        let mtc = MetroTicketController()
        let childrenTicket = MetroTicket(type: .Children)
        mtc.addChildrenTicket(childrenTicket)
        XCTAssertEqual(mtc.childrenTickets?.count, 1)
    }
    
}
