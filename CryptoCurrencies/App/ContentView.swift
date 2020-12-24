//
//  ContentView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/4/20.
// https://edpenano.com
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cryptoCurrency: [cryptoCurrency] = cryptoCurrencyData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cryptoCurrency.shuffled()) { item in
                    // NAVIGATION LINK - automatically switches to CryptoDetailView
                    NavigationLink(destination: CryptoDetailView(currency: item)) {
                        CryptoCurrencyRowView(cryptoCurrency: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Cryptocurrencies")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cryptoCurrency: cryptoCurrencyData)
    }
}
