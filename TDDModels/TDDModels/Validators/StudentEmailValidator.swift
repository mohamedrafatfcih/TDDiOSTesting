//
//  StudentEmailValidator.swift
//  TDDModels
//
//  Created by MohamedRafat on 7/16/22.
//

import Foundation

class StudentEmailValidator{
    
    func validate(_ value: String) -> Bool {
        if !value.isEmpty && value.contains("@") && value.contains(".") {
            return true
        }
        return false
    }
}
