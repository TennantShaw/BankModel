//
//  BankModel.swift
//  BankModel20170414
//
//  Created by Tennant Shaw on 4/15/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

class Bank {
    let bankPhysicalAddress = "123 Moon Street"
    
    var employeeList = [Person]()
    var customerList = [Customer]()
    var accounts: Dictionary = [Person:Account]()
    
    func addCustomer(customer: Customer) -> Customer {
        customerList.append(customer)
        return customer
    }
    
    func addEmployee(employee: Person) -> [Person] {
        employeeList.append(employee)
        return employeeList
    }
    
    func bankAccountsSum() {
        // should return the total off all combined accounts
    }
    
    func withdraw() {
        // should be able to withdraw money from a specific account
    }
    
    func deposit() {
        // should be able to deposit money into a specific account
    }
    
    func pullCustomerAccounts() {
        // should get all of a specific customers accounts
    }
    
    func customerAccountsSum() {
        // should get the sum of all accounts for a given customer
    }
    
    var accountTotal: Double = 0.0
    
    
    func distribute(funds withdrawalRequest: Double) -> Double {
        let withdrawalRequest = min(withdrawalRequest, accountTotal)
        accountTotal -= withdrawalRequest
        return withdrawalRequest
    }
    func receive(funds: Double) {
        accountTotal += funds
    }
}






