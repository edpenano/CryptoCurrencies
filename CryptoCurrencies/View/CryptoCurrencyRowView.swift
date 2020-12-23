//
//  CryptoCurrencyRowView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/22/20.
// https://edpenano.com
//

import SwiftUI

struct CryptoCurrencyRowView: View {
    // MARK: - PROPERTIES
    var cryptoCurrency: cryptoCurrency
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(cryptoCurrency.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: cryptoCurrency.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(cryptoCurrency.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(cryptoCurrency.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        } //: HSTACK
    }
}

struct CryptoCurrencyRowView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrencyRowView(cryptoCurrency: cryptoCurrencyData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
