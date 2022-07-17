//
//  Student.swift
//  TDDModels
//
//  Created by MohamedRafat on 7/16/22.
//

import Foundation

class Student: NSObject {
    
    let id: Int
    let name: String
    let email: String
    let level: Int
    
    init?(id: Int, name: String, email: String, level: Int, idValidator: StudentIDValidator? = nil, nameValidator: StudentNameValidator? = nil, emailValidator: StudentEmailValidator? = nil) {
        
        if idValidator?.validate(id) == false {
            return nil
        }
        
        if nameValidator?.validate(name) == false {
            return nil
        }
        
        if emailValidator?.validate(email) == false {
            return nil
        }
        
        self.id = id
        self.name = name
        self.email = email
        self.level = level
    }
}
