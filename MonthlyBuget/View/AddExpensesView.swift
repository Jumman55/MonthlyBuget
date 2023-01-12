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
        VStack{
            TextField("How much spend?", value: $addExpenses.euro, formatter: NumberFormatter())
                .padding()
            TextField("What is the type?", text: $addExpenses.catagory)
                .padding()
            TextField("Any Details?", text: $addExpenses.note)
                .padding()
                
            TextField("Date", text: $addExpenses.date)
                .padding()
            
            Button("Save") {
                addExpenses.addTransaction()
            }
            
            List{
                ForEach(addExpenses.realmDataManager.transactions, id: \.id){ tran in
                    Text("\(tran.catagory)")
                        .swipeActions(edge: .trailing){
                            Button(role: .destructive){
                                self.addExpenses.realmDataManager.deleteTransaction(id: tran.id)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                    
                }
            }
            
        }//: VStack
        .padding()
        
    
    }
}

//MARK: -PREVIEW
struct AddExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpensesView()
    }
}
