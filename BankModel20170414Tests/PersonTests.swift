//
//  PersonTests.swift
//  BankModel20170414
//
//  Created by Tennant Shaw on 4/18/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import BankModel20170414

class PersonTests: XCTestCase {
    func createCustomerTest (givenName: String, familyName: String, emailAddress: String) {
        let bank = Bank()
        let customer = Customer(emailAddress: "me@you.com", givenName: "Tennant", familyName: "Shaw")
        
        let result = bank.addCustomer(customer: customer)
        let expected = Customer(emailAddress: "me@you.com", givenName: "Tennant", familyName: "Shaw")
        XCTAssertEqual(result, expected)
    }
}
