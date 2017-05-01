//: Playground - noun: a place where people can play

import UIKit
import Foundation



class Bank {
    static var banksTotalFunds = 10000
    static func distribute(funds withdrawalRequest: Int) -> Int {
        let withdrawalRequest = min(withdrawalRequest, banksTotalFunds)
        banksTotalFunds -= withdrawalRequest
        return withdrawalRequest
    }
    static func receive(funds: Int) {
        banksTotalFunds += funds
    }
    
}

Bank()
print(Bank.banksTotalFunds)
Bank.distribute(funds: 100)
print(Bank.banksTotalFunds)
Bank.receive(funds: 100)
print(Bank.banksTotalFunds)


class Person {
    var givenName: String
    var familyName: String
    var fullName: String {
        let fullName = givenName + familyName
        return fullName
    }
    
    init(givenName: String, familyName: String) {
        self.givenName = givenName
        self.familyName = familyName
    }
    
    class Customer: Person {
        var emailAddress: String
        
        init(emailAddress: String, givenName: String, familyName: String) {
            self.emailAddress = emailAddress
            super.init(givenName: givenName, familyName: familyName)
        }
    }
}

print(Person(givenName: "Tennant", familyName: "Shaw"))


class BankAccount {
    
    class SavingsAccount {
        var savingsAccountTotal: Double = 100.00
        
        init(savingsAccountTotal: Double) {
            self.savingsAccountTotal = savingsAccountTotal
        }
        
    }
    class CheckingAccount {
        var checkingAccountTotal: Double = 1000.00
        
        init(checkingAccountTotal: Double) {
            self.checkingAccountTotal = checkingAccountTotal
        }

    }
    
}


