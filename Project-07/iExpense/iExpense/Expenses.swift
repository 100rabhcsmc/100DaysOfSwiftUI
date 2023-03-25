//
//  Expenses.swift
//  iExpense
//
//  Created by Saurabh Chavan on 25/03/23.
//

import Foundation

class Expenses: ObservableObject{
    @Published var items = [ExpenseItem]()
}
