//
//  EmployeesListView.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import SwiftUI

struct EmployeesView: View {
    
    @ObservedObject var viewModel: EmployeesViewModel
    
    @State var isDetailPresented: Bool = false
    
    @State var isCreatePresented: Bool = false
    
    init(viewModel: EmployeesViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.employees, id: \.id) { employee in
                HStack {
                    Text("Employee: \(employee.firstName)")
                }
                .onTapGesture {
                    self.viewModel.selectedEmployee = employee
                    self.isDetailPresented = true
                }

            }
            .toolbar {
                Button("Add") {
                    isCreatePresented = true
                }
            }
            .navigationTitle("Employees")
            .onAppear {
                Task {
                    await viewModel.fetchData()
                }
            }
        }.sheet(isPresented: $isDetailPresented) {
            EmployeeDetailView(employee: viewModel.selectedEmployee!, isPresented: $isDetailPresented)
        }.sheet(isPresented: $isCreatePresented) {
            CreateEmployeeView(isPresented: $isCreatePresented)
        }
    }
}

struct EmployeesListView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeesView(viewModel: EmployeesViewModel(dataService: DataService()))
    }
}
