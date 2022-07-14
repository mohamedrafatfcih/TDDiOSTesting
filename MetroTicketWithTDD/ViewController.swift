//
//  ViewController.swift
//  MetroTicketWithTDD
//
//  Created by MohamedRafat on 7/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var oldPeopleTicketLbl: UILabel!
    @IBOutlet weak var teenageTicketLbl: UILabel!
    @IBOutlet weak var childrenTicketLbl: UILabel!
    @IBOutlet weak var totalTicketsLbl: UILabel!
    
    
    var mtc: MetroTicketController?
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        mtc = MetroTicketController()
        updateUI()
    }
    
    
    
    @IBAction func onGenerateOldPeopleTicketPressed(_ sender: Any) {
        
        mtc?.addOldPeopleTicket(MetroTicket(type: .OldPeople))
        updateUI()
    }
    
    @IBAction func onGenerateTeenageTicketPressed(_ sender: Any) {
        mtc?.addTeenageTicket(MetroTicket(type: .Teenage))
        updateUI()
    }
    
    @IBAction func onGenerateChildrenTicketPressed(_ sender: Any) {
        mtc?.addChildrenTicket(MetroTicket(type: .Children))
        updateUI()
    }
    
    @IBAction func onRestAllTicketsPressed(_ sender: Any) {
        mtc?.restAllTickets()
        updateUI()
    }
    
    
    func updateUI(){
        let oldPTCount = mtc?.oldPeopleTickets?.count ?? 0
        let teenageTCount = mtc?.teenageTickets?.count ?? 0
        let childrenTCount = mtc?.childrenTickets?.count ?? 0
        let totalTickets = oldPTCount + teenageTCount + childrenTCount
        
        oldPeopleTicketLbl.text =  "\(oldPTCount)"
        teenageTicketLbl.text = "\(teenageTCount)"
        childrenTicketLbl.text = "\(childrenTCount)"
        
        totalTicketsLbl.text = "\(totalTickets)"
    }

}

