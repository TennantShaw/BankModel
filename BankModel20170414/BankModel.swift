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
    var accountList = [Account]()
    var accountsDirectory: [Customer:Set<Account>] = [:]
    
    let customer1: Customer = Customer(emailAddress: "me@you.com", givenName: "Tennant", familyName: "Shaw")
    let customer2: Customer = Customer(emailAddress: "you@me.com", givenName: "Shannon", familyName: "Shaw")
    let employee1: Person = Person(givenName: "The", familyName: "Dude")
    let employee2: Person = Person(givenName: "Homer", familyName: "Simpson")
    let savingAccount: SavingsAccount = SavingsAccount(balance: 1000.00, uuid: UUID())
    let checkingAccount: CheckingAccount = CheckingAccount(balance: 8888.00, uuid: UUID())
    
    func addCustomer(customer: Customer) -> Customer {
        customerList.append(customer)
        return customer
    }
    
    func addEmployee(employee: Person) -> Person {
        employeeList.append(employee)
        return employee
    }
    
    func addCheckingAccount(account: CheckingAccount) -> CheckingAccount {
        accountList.append(account)
        return account
    }
    
    func addSavingsAccount(account: SavingsAccount) -> SavingsAccount {
        accountList.append(account)
        return account
    }
    
    func bankAccountsSum(accounts: [Account?]) -> Double {
        var accountBalanceList = [Double]()
        for value in accounts {
            accountBalanceList.append((value?.balance)!)
        }
        return accountBalanceList.reduce(0, {$0 + $1})
    }
    
    func assignAccountToCustomer(person: Customer, account: Set<Account>) -> [Customer:Set<Account>] {
        accountsDirectory.updateValue(account, forKey: person)
        return accountsDirectory
    }
    
    func withdrawFromAccount(amount: Double, account: Account) -> Bool {
        if amount <= account.balance {
            account.withdraw(amount: amount)
            return true
        } else {
            return false
        }
    }
    
    func deposit(amount: Double, account: Account) -> Bool {
        account.balance.add(amount)
        return true
    }
    
    func pullCustomerAccounts(customer: Customer) -> Bool {
       return false
    }
    
    func customerAccountsSum(customer: Customer, account: Set<Account>) -> Bool {
        return false
        // should get the sum of all accounts for a given customer
    }
}






