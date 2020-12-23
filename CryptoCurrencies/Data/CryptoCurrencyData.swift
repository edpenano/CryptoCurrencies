//
//  CryptoCurrencyData.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/18/20.
// https://edpenano.com
//

import SwiftUI

// MARK: - CRYPTOCURRENCY DATA

let cryptoCurrencyData: [cryptoCurrency] = [
    
    cryptoCurrency(title: "Bitcoin", headline: "The original digital currency", image: "bitcoin", gradientColors: [Color("ColorGrapefruitLight"), Color("ColorGrapefruitDark")], description: "Bitcoin is the original digital currency", currentPrice: ["$23,000", "no. 1"]),
    cryptoCurrency(title: "XRP", headline: "XRP is a digital asset built for payments and settles transactions in 3-5 seconds.", image: "xrp", gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")], description: "XRP makes cross-border payments quickly and cost-effective", currentPrice: ["$0.50", "no. 3"]),
    cryptoCurrency(title: "Ethereum", headline: "Gas lights the system", image: "ethereum", gradientColors: [Color("ColorPomegranateLight"), Color("ColorPomegranateDark")], description: "Ethereum was created by Vitalik Buterin", currentPrice: ["$600", "no. 2"])
    
]
