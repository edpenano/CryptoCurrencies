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
    
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // CRYPTOCURRENCY: IMAGE
                Image("xrp")
                    .resizable()
                    .scaledToFit()
                    // add drop-shadow
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // CRYPTOCURRENCY: TITLE
                Text("XRP")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0 , green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // CRYPTOCURRENCY: HEADLINE
                Text("XRP is a digital asset built for payments and settles transactions in 3-5 seconds.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // CRYPTOCURRENCY: BUTTON
                StartButtonView()
                
                
            } //: VSTACK
        } //: ZSTACK
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

// MARK: - PREVIEW

struct CryptoCurrenciesCardView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrenciesCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
