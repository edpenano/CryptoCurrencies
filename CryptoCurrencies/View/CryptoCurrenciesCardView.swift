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
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // CRYPTOCURRENCY: IMAGE
                Image("bitcoin")
                    .resizable()
                    .scaledToFit()
                    // add drop-shadow
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // CRYPTOCURRENCY: TITLE
                Text("Bitcoin")
                // CRYPTOCURRENCY: HEADLINE
                // CRYPTOCURRENCY: BUTTON
            } //: VSTACK
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

struct CryptoCurrenciesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrenciesCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
