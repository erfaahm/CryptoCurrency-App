//
//  Double.swift
//  CryptoCurrency App
//
//  Created by Erfan on 9/25/22.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 3
        formatter.minimumFractionDigits = 3
        return formatter
        
    }
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    func toPercentString() -> String{
        guard let numberAsString = numberFormatter.string(for: self) else { return ""}
        return numberAsString + "%"
    }
}
