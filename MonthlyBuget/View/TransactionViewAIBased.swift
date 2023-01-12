//
//  TransactionViewAIBased.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 12/01/23.
//

import SwiftUI



struct TransactionViewAIBased: View {
    // Create an instance of RealmDataManager2
    private let realmDataManager = RealmDataManager2()
    
    // State variables to store the user's input
    @State private var euro: String = ""
    @State private var category: String = ""
    @State private var note: String = ""
    @State private var date: String = ""

    var body: some View {
        VStack {
            // TextFields to collect the transaction data from the user
            TextField("Euro", text: $euro)
            TextField("Category", text: $category)
            TextField("Note", text: $note)
            TextField("Date", text: $date)
            
            // A button to save the transaction data
            Button(action: {
                // Convert the user's input to the appropriate data types
                guard let euro = Float(self.euro) else { return }
                let date = self.date
                let category = self.category
                let note = self.note
                
                // Create a new Transaction object
                let newTransaction = Transaction(euro: euro, catagory: category, note: note, date: date)
                
                // Save the Transaction object to the database
                self.realmDataManager.create(newTransaction)
            }) {
                Text("Save")
            }
            Spacer()
            // use List to show the list of added categories
            var transactions:[Transaction] = realmDataManager.read()
            List {
                ForEach(transactions, id: \.id) { transaction in
                    Text(transaction.catagory)
                }
            }
        }
    }
}


struct TransactionViewAIBased_Previews: PreviewProvider {
    static var previews: some View {
        TransactionViewAIBased()
    }
}
