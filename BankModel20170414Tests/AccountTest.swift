//
//  AccountTest.swift
//  BankModel20170414
//
//  Created by Tennant Shaw on 4/18/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import BankModel20170414

class AccountTest: XCTestCase {
    func testCreateCheckingAccount() {
        let bank = Bank()
        let checkingAccount: CheckingAccount = CheckingAccount(balance: 1000.00, uuid: UUID())
        
        let result = bank.addCheckingAccount(account: checkingAccount)
        let expected = checkingAccount
        XCTAssertEqual(result, expected)
    }
    
    func testCreateSavingAccount() {
        let bank = Bank()
        let savingsAccount: SavingsAccount = SavingsAccount(balance: 5555.00, uuid: UUID())
        
        let result = bank.addSavingsAccount(account: savingsAccount)
        let expected = savingsAccount
        XCTAssertEqual(result, expected)
    }
}
