//
//  MainDataModel.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 30/11/22.
//

import Foundation
 
/// This class will be hold the data of every trabsaction
class ExpensesModel{
    var euro: Float
    var catagory: String
    var note: String
    var date: String
    
    init(euro: Float, catagory: String, note: String, date: String) {
        self.euro = euro
        self.catagory = catagory
        self.note = note
        self.date = date
    }
    
        ///This function will add the total expenses by catagory
        ///Try to use dictionary
    func addByCatagory(){
        
    }
    
        ///This will check which catagory have been declare by the user
        ///Hang on with string cases
    func checkTheCatagory(){
        
    }

}

///Expenses Catagory  by enum to use in the
enum ExpensesCatagory {
    case Auto, Entertainment, Home, Food, Medical, Personal_Items, Travel, utilites, Others
}
