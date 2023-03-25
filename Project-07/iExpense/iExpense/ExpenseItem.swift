//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Saurabh Chavan on 25/03/23.
//

import Foundation

struct ExpenseItem:Identifiable,Codable{
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
