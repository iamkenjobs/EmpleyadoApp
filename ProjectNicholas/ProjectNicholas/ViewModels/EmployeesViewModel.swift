//
//  EmployeesViewModel.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import Foundation

class EmployeesViewModel: ObservableObject {
    var dataService: DataService
    
    @Published var employees: [Employee] = []
    
    var selectedEmployee: Employee?
    
    init(dataService: DataService) {
        self.dataService = dataService
    }
    
    @MainActor
    func fetchData() async {
        do {
            employees = try await dataService.fetchEmployees()
        } catch {
            
        }
    }
}
