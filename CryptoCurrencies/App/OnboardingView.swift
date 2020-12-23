//
//  OnboardingView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/9/20.
// https://edpenano.com
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var cryptoCurrency: [cryptoCurrency] = cryptoCurrencyData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(cryptoCurrency[0...2]) { item in
                CryptoCurrenciesCardView(currency: item)
            } //: LOOP
        }  //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(cryptoCurrency: cryptoCurrencyData)
    }
}
