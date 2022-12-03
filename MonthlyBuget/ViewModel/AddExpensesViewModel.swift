//
//  AddExpensesViewModel.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 03/12/22.
//

import SwiftUI
import Foundation

@MainActor
final class AddExpenses: ObservableObject{
    //MARK: - PROPERTIES
    @Published var realmDataManager =  RealmDataManager()
    @Published var euro: Float = 30.00
    @Published var catagory: String = "Food"
    @Published var note: String = "Get from conad"
    @Published var data: String = "01/12/22"
    
    func addTransaction(){
        realmDataManager.addTransaction(euro: euro, catagory: catagory, note: note, date: data)
    }
    
    func readTransaction(){
        realmDataManager.readTransactions()
    }
    
    
    //MARK: -BODY
}
