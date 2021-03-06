//
//  CryptoCurrenciesCardView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/6/20.
// https://edpenano.com
//

import SwiftUI

struct CryptoCurrenciesCardView: View {
    // MARK: - PROPERTIES
    
    var currency: cryptoCurrency //bring in cryptoCurrency data model
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // CRYPTOCURRENCY: IMAGE
                Image(currency.image)
                    .resizable()
                    .scaledToFit()
                    // add drop-shadow
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.8)
                
                // CRYPTOCURRENCY: TITLE
                Text(currency.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0 , green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // CRYPTOCURRENCY: HEADLINE
                Text(currency.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // CRYPTOCURRENCY: BUTTON
                StartButtonView()
                
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
            // resets the animation
            isAnimating = false
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: currency.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        // Adds padding to the entire card
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW

struct CryptoCurrenciesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrenciesCardView(currency: cryptoCurrencyData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
