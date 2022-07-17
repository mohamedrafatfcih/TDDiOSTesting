//
//  StudentNameValidator.swift
//  TDDModels
//
//  Created by MohamedRafat on 7/16/22.
//

import Foundation

class StudentNameValidator{
    
    func validate(_ value: String) -> Bool {
        if !value.isEmpty && !value.contains(" "){
            return true
        }
        return false
    }
}
