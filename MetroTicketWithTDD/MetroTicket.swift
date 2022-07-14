//
//  MetroTicket.swift
//  MetroTicketWithTDD
//
//  Created by MohamedRafat on 7/12/22.
//

import Foundation

enum TicketType{
    case OldPeople
    case Teenage
    case Children
}

class MetroTicket{
    let type: TicketType
    
    init(type: TicketType){
        self.type = type
    }
}
