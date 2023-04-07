//
//  DataService.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import Foundation


class DataService {
    func fetchEmployees() async throws -> [Employee] {
        guard let url = URL(string: "http://192.168.1.10:8080/employees") else {
            throw DataServiceError.invalidUrl
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.cachePolicy = .reloadIgnoringLocalCacheData
        
        let (data, response) = try await URLSession.shared.data(for: request)

        // Parse the JSON data
        let employees = try JSONDecoder().decode([Employee].self, from: data)
        return employees
    }
    
    func updateEmployee(employee: Employee) {
        
    }
}


enum DataServiceError: Error {
    case invalidUrl
}
