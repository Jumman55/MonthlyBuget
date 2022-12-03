//
//  TransactionDataModel.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 02/12/22.
//

import Foundation
import RealmSwift

/// This is the basic data model for every transaction such as food , Travel
/// This model based on RealmSwift Object class/protocol

class Transaction: Object, ObjectKeyIdentifiable{
    //MARK: - PROPERTIES
    @Persisted(primaryKey: true)  var id: ObjectId
    @Persisted var euro: Float
    @Persisted var catagory: String
    @Persisted var note: String
    @Persisted var date: String
}

