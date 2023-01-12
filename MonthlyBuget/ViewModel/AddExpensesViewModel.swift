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
    @Published var euro: Float = 10.0
    @Published var catagory: String = ""
    @Published var note: String = ""
    @Published var date: String = ""
    
    func addTransaction(){
        realmDataManager.addTransaction(euro: euro, catagory: catagory, note: note, date: date)
    }
    
    func readTransaction(){
        realmDataManager.readTransactions()
    }
//    func deleteTransction(){
//        realmDataManager.deleteTransaction(id: realmDataManager.transactions)
//    }
    
    
    //MARK: -BODY
}
