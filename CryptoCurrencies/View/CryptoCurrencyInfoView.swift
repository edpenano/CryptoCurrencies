//
//  CryptoCurrencyInfoView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/28/20.
// https://edpenano.com
//


import SwiftUI

struct CryptoCurrencyInfoView: View {
    // MARK: - PROPERTIES
    
    var currencyInfo: cryptoCurrency
    // contain label text
    let cryptoCurrencyInfo: [String] = ["Price","Power Ranking"]
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Information about \(currencyInfo.title)") {
                ForEach(0..<cryptoCurrencyInfo.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(cryptoCurrencyInfo[item])
                        }
                        .foregroundColor(currencyInfo.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(currencyInfo.currentPrice[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

struct CryptoCurrencyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCurrencyInfoView(currencyInfo: cryptoCurrencyData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 400))
            .padding()
    }
}
