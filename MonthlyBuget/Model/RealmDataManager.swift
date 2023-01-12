//
//  RealmDataManager.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 02/12/22.
//

import Foundation
import RealmSwift

/// RealmDataManager will handle the data base with UI
/// It also make sure of CRUD of data base data

class RealmDataManager: ObservableObject{
    
    //MARK: - PROPERTIES
    
    private(set) var localRealm: Realm?
    @Published private(set) var transactions: [Transaction] = []
    
    //MARK: -INIT
    init(){
        openRealm()
    }
    
    //MARK: -METHODS
    
    /// This method only open the realm class and handle the Error
    public func openRealm(){
        do {
            localRealm = try Realm()
        } catch  {
            print("Error opening Realm: \(error)")
        }
    }//: openRealm
    
    public func readTransactions(){
        if let localRealm = localRealm{
            let allTransactions = localRealm.objects(Transaction.self)
            transactions = []
            allTransactions.forEach { transaction in
                transactions.append(transaction)
//                    for transaction in allTransactions {
//                        transactions.append(transaction)
//                    }
            }
        }// localRealm
        
    }//: readTransactions
    
    public func addTransaction(euro: Float, catagory: String, note: String, date: String ){
        if let localRealm = localRealm{
            do {
                try localRealm.write{
                    // create an transaction data as list of values
                    let newTransaction = Transaction(value: ["euro": euro, "catagory": catagory, "note": note, "date": date])
                    //added the data into final database
                     localRealm.add(newTransaction)
                    //need to read the database hear by fatching database
                    readTransactions()
                    print("Added new transaction to Realm: \(newTransaction)")
                }//.write
            } catch  {
                print("Error adding transaction to Realm: \(error)")
            }
        }//: localRealm
    }//: addTransaction
    
    public func updateTransaction(){
        
    }//: updateTransaction
    
    public func deleteTransaction(id: ObjectId){
            // Make sure a Realm instance is open
        guard let localRealm = localRealm else {
            print("Error: Realm is not open.")
            return
        }
        
            // Find the transaction with the specified id
        guard let transactionToDelete = localRealm.objects(Transaction.self).filter("id == %@", id).first else {
            print("Error: No transaction found with id: \(id)")
            return
        }
        
        do{
            try localRealm.write{
                    // Delete the transaction
                localRealm.delete(transactionToDelete)
                    // Update the transactions array
                readTransactions()
                print("Deleted transaction with id: \(id)")
            }
        } catch{
            print("Error deleting transaction from Realm: \(error)")
        }
    }//: deleteTransaction
}
