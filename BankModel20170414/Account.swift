//
//  Account.swift
//  BankModel20170414
//
//  Created by Tennant Shaw on 4/18/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

class Account: Hashable {
    var balance: Double
    var uuid: UUID = UUID()
    
    init(balance: Double = 0.0, uuid: UUID = UUID()) {
        self.balance = balance
        self.uuid = uuid
    }
    
    enum AccountType {
        case checkingAccount
        case savingAccount
    }
    
    var accountType: AccountType{
    fatalError("this does not matter")
    }
    
    var hashValue: Int {
        return balance.hashValue &+ uuid.hashValue
    }
    public static func == (lhs: Account, rhs: Account) -> Bool {
        return lhs.balance == rhs.balance && lhs.uuid == rhs.uuid
    }
    
    func withdraw(amount: Double) -> Bool {
        if balance < amount {
            return false
        } else {
            balance -= amount
            return true
        }
    }
    
    func deposit(amount: Double) -> Bool {
        balance += amount
        return true
    }
    
}



class CheckingAccount: Account {
    override var accountType: Account.AccountType {
        return .checkingAccount
    }
}



class SavingsAccount: Account {
    override var accountType: Account.AccountType {
        return .savingAccount
    }
}
