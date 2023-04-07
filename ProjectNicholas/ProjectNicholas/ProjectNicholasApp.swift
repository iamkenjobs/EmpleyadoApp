//
//  ProjectNicholasApp.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import SwiftUI

@main
struct ProjectNicholasApp: App {
    var body: some Scene {
        WindowGroup {
            EmployeesView(viewModel: EmployeesViewModel(dataService: DataService()))
        }
    }
}
