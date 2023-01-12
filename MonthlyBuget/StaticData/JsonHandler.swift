//
//  JsonHandler.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 15/12/22.
//

import Foundation

class JsonFile: Codable, ObservableObject{
    
    
    func writeJson(jsonData: TransactionFromJson) -> String? {
        let jsonEncoder = JSONEncoder()
        guard let jData = try? jsonEncoder.encode(jsonData)else{return nil}
        return String(data: jData, encoding: .utf8)
        
    }
    
    func loadJson(filename: String) -> [TransactionFromJson]? {
        let jsondecoder = JSONDecoder()
        
        guard
            let url = Bundle.main.url(forResource: filename, withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let transaction = try? jsondecoder.decode([TransactionFromJson].self, from: data)
        else{
            return nil
        }
        return transaction
    }
}


class JsonViewModel: ObservableObject{
    @Published var jsonRead = JsonFile()
    @Published var transactionsVM: [TransactionFromJson] = []
    
    func readJson(){
        self.transactionsVM = jsonRead.loadJson(filename: "transctionJson")!
    }
}

