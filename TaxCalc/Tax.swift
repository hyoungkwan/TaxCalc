//
//  Tax.swift
//  TaxCalc
//
//  Created by 김형관 on 2023/04/26.
//

import Foundation

class Tax: ObservableObject {
    var revenue: Double
    var expenses: Double
    var deductionAndExemption: Double
    var taxRate: Double
    @Published var taxAmount: Double
        
    init() {
        revenue = 0.0
        expenses = 0.0
        deductionAndExemption = 0.0
        taxRate = 0.0
        taxAmount = 0.0
    }
    func taxCalulation () {
        taxAmount = (revenue - expenses - deductionAndExemption) * taxRate
    }
}

