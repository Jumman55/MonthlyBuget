//
//  AddExpensesView.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 03/12/22.
//

import SwiftUI

struct AddExpensesView: View {
    //MARK: - PROPERTIES
    @StateObject var addExpenses = AddExpenses()
    //MARK: -BODY
    var body: some View {
        Text("Add something!")
    }
}

//MARK: -PREVIEW
struct AddExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpensesView()
    }
}
