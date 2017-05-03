//
//  BankModel20170414Tests.swift
//  BankModel20170414Tests
//
//  Created by Tennant Shaw on 4/15/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import BankModel20170414

class BankModel20170414Tests: XCTestCase {
    func testBankAccountSum() {
        let bank = Bank()
        let savingAccount: SavingsAccount = SavingsAccount(balance: 1000.00, uuid: UUID())
        let checkingAccount: CheckingAccount = CheckingAccount(balance: 8888.00, uuid: UUID())
        let listOfAccounts = [savingAccount, checkingAccount]
        
        let result = bank.bankAccountsSum(accounts: listOfAccounts)
        let expected = 9888.00
        XCTAssertEqual(result, expected)
    }
    
    func testAssignAccountToCustomer() {
        let bank = Bank()
        let savingAccount = Set<SavingsAccount>()
        let customer1: Customer = Customer(emailAddress: "me@you.com", givenName: "Tennant", familyName: "Shaw")
        let accountDictionary = [customer1:savingAccount]
        let result = bank.assignAccountToCustomer(person: customer1, account: savingAccount)
        let expected = accountDictionary
        XCTAssertEqual(result, expected)
    }
}


