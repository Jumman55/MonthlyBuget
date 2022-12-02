//
//  DatabaseTests.swift
//  DatabaseTests
//
//  Created by Jumman Hossen on 02/12/22.
//

import XCTest

@testable import MonthlyBuget
@testable import RealmSwift

final class DatabaseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddAndReadTransaction(){
        let transaction = RealmDataManager.addTransaction(euro: 30, catagory: "Food", note: "From conad", date: "01/12/22")
        let readTran = RealmDataManager.readTransactions()
         XCTAssertEqual(transaction, readTran)
    }

}
