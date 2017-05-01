//
//  Person.swift
//  BankModel20170414
//
//  Created by Tennant Shaw on 4/18/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

class Person: Hashable {
    var givenName: String = ""
    var familyName: String = ""
    var fullName: String {
        return "\(givenName) \(familyName)"
    }
    
    init(givenName: String, familyName: String) {
        self.givenName = givenName
        self.familyName = familyName
    }
    
    var hashValue: Int {
        return givenName.hashValue &+ familyName.hashValue
    }
    public static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.givenName == rhs.givenName && lhs.familyName == rhs.familyName
    }
}

class Customer: Person {
    var emailAddress: String = ""
    
    init(emailAddress: String, givenName: String, familyName: String) {
        self.emailAddress = emailAddress
        super.init(givenName: givenName, familyName: familyName)
    }
}
