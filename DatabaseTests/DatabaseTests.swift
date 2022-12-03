//
//  DatabaseTests.swift
//  DatabaseTests
//
//  Created by Jumman Hossen on 02/12/22.
//

import XCTest

@testable import MonthlyBuget
//@testable import RealmSwift

final class DatabaseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        Realm.Configuration.defaultConfiguration.inMemoryIdentifier = self.name
//        let localRealm = try! Realm()
//        RealmDataManager.localRealm = localRealm
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    func testAddAndReadTransaction(){
//        let tran = RealmDataManager()
//        let transaction = tran.addTransaction(euro: 30, catagory: "Food", note: "From conad", date: "01/12/22")
//        let readTran = tran.readTransactions()
//        XCTAssertEqual(readTran.catagory, "Food")
//    }

}
