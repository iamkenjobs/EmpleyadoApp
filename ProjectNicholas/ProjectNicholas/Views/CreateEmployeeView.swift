//
//  CreateEmployeeView.swift
//  ProjectNicholas
//
//  Created by Kenneth Esguerra on 4/8/23.
//

import SwiftUI

struct CreateEmployeeView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("Create Employee")
    }
}

struct CreateEmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        CreateEmployeeView(isPresented: .constant(false))
    }
}
