//
//  TabBarView.swift
//  MonthlyBuget
//
//  Created by Jumman Hossen on 03/12/22.
//

import SwiftUI

struct TabBarView: View {
    //MARK: - PROPERTIES
    
    //MARK: -BODY
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "homekit")
                }
           
            AddExpensesView()
                .tabItem{
                    Label("Add", systemImage: "rectangle.stack.fill.badge.plus")
                }
            
            TransactionsView()
                .tabItem{
                    Label("View", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

//MARK: -PREVIEW
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
