//
//  OnboardingView.swift
//  CryptoCurrencies
//
//  Created by Karen Lee on 12/9/20.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var currency: [cryptoCurrency] = cryptoCurrencyData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(currency[0...2]) { item in
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
//        OnboardingView(currency: CryptoCurrencies)
        Text("hello")
    }
}
