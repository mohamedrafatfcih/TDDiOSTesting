//
//  StudentIDValidator.swift
//  TDDModels
//
//  Created by MohamedRafat on 7/16/22.
//

import Foundation

class StudentIDValidator{
    
    func validate(_ value: Int) -> Bool {
        if value > 0 && value < 7{
            return true
        }
        return false
    }
}
