//
//  CryptoCurrencyModel.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/18/20.
// https://edpenano.com
//

import SwiftUI

// MARK: - CRYPTOCURRENCIES DATA MODEL

struct cryptoCurrency: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var currentPrice: [String]
}
