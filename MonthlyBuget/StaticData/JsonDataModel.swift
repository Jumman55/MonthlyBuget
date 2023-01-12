//
//  JsonDataModel.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 15/12/22.
//

import Foundation

struct TransactionFromJson: Codable, Identifiable{
    var id: Int
    var euro: Float
    var category: String
    var note: String
    var date: String
}
