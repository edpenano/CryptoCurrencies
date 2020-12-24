//
//  CryptoDetailView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/23/20.
// https://edpenano.com
//


import SwiftUI

struct CryptoDetailView: View {
    // MARK: - PROPERTIES
    var currency: cryptoCurrency
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    CryptocurrencyHeaderView(currency: currency)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(currency.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(currency.gradientColors[1])
                        
                        // HEADLINE
                        Text(currency.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        // CURRENT PRICE
                        
                        // SUBHEADING
                        Text("Learn more about \(currency.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(currency.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(currency.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK - adding link (example usage: to give credit)
                        SourceLinkView()
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                // HIDE WHITE SPACE IN HEADER
                .navigationBarTitle(currency.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            // HIDE SCROLL VIEW
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

struct CryptoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoDetailView(currency: cryptoCurrencyData[0])
    }
}
