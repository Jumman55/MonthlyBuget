//
//  AIGivenModelRealm.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 12/01/23.
//

import Foundation
import RealmSwift

class RealmDataManager2 {
    
    // MARK: - Properties
    private var realm: Realm?
    
    // MARK: - Initialization
    init() {
        openRealm()
    }
    
    // MARK: - Helper Methods
    private func openRealm() {
        do {
            realm = try Realm()
        } catch {
            print("Error opening Realm: \(error)")
        }
    }
    
    // MARK: - CRUD Methods
    func create(_ transaction: Transaction) {
        do {
            try realm?.write {
                realm?.add(transaction)
            }
        } catch {
            print("Error creating transaction in Realm: \(error)")
        }
    }
    
    func read() -> Results<Transaction>? {
        return realm?.objects(Transaction.self)
    }
    
    func update(with objectId: ObjectId, values: [String: Any]) {
        do {
            guard let transaction = realm?.object(ofType: Transaction.self, forPrimaryKey: objectId) else { return }
            try realm?.write {
                for (key, value) in values {
                    transaction.setValue(value, forKey: key)
                }
            }
        } catch {
            print("Error updating transaction in Realm: \(error)")
        }
    }
    func delete(objectId: ObjectId) {
        do {
            guard let transaction = realm?.object(ofType: Transaction.self, forPrimaryKey: objectId) else { return }
            try realm?.write {
                realm?.delete(transaction)
            }
        } catch {
            print("Error deleting transaction from Realm: \(error)")
        }
    }

}
