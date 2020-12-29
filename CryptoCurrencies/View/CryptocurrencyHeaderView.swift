//
//  CryptocurrencyHeaderView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/24/20.
// https://edpenano.com
//

import SwiftUI

struct CryptocurrencyHeaderView: View {
    // MARK: - PROPERTIES
    var currency: cryptoCurrency
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: currency.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(currency.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.3)) {
                isAnimatingImage = true
            }
        }
    }
}

struct CryptocurrencyHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CryptocurrencyHeaderView(currency: cryptoCurrencyData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
