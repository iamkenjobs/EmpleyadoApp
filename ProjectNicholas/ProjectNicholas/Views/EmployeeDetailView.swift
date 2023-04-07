//
//  EmployeeDetailView.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import SwiftUI

struct EmployeeDetailView: View {
    var employee: Employee
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("Hello, \(employee.firstName)!")
    }
}

struct EmployeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeDetailView(employee: Employee(id: "", firstName: "", lastName: "", numberOfDependents: 0, height: 0, weight: 0, hiredDate: "", startTime: "", isRegular: false), isPresented: .constant(false))
    }
}
