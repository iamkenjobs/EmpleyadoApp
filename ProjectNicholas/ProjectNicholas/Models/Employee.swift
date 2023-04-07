//
//  Employee.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import Foundation

struct Employee: Decodable {
    var id: String
    var firstName: String
    var lastName: String
    var numberOfDependents: Int
    var height: Double
    var weight: Double
    var hiredDate: String
    var startTime: String
    var isRegular: Bool
}
