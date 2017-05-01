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
    func testCreateCustomer() {
        let bank = Bank()
        let customer = Customer(emailAddress: "me@you.com", givenName: "Tennant", familyName: "Shaw")
        
        let result = bank.addCustomer(customer: customer)
        let expected = customer
        XCTAssertEqual(result, expected)
    }
    
    func testCreateEmployee() {
        let bank = Bank()
        let employee = Person(givenName: "Tennant", familyName: "Shaw")
        
        let result = bank.addEmployee(employee: employee)
        let expected = employee
        XCTAssertEqual(result, expected)
    }
}

