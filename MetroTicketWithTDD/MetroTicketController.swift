//
//  MetroTicketController.swift
//  MetroTicketWithTDD
//
//  Created by MohamedRafat on 7/12/22.
//

import Foundation

class MetroTicketController{
    var oldPeopleTickets: [MetroTicket]?
    var teenageTickets: [MetroTicket]?
    var childrenTickets: [MetroTicket]?
    
    
    init(){
        oldPeopleTickets = [MetroTicket]()
        teenageTickets = [MetroTicket]()
        childrenTickets = [MetroTicket]()
    }
    
    func addOldPeopleTicket(_ ticket: MetroTicket){
        oldPeopleTickets?.append(ticket)
    }
    
    func addTeenageTicket(_ ticket: MetroTicket){
        teenageTickets?.append(ticket)
    }
    
    func addChildrenTicket(_ ticket: MetroTicket){
        childrenTickets?.append(ticket)
    }
}
