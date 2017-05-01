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
    
    init(balance: Double, uuid: UUID) {
        self.balance = balance
        self.uuid = UUID()
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
