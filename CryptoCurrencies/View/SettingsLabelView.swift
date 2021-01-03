//
//  SettingsLabelView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 1/3/21.
// https://edpenano.com
//
// custom components for SettingsView
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Cryptocurrencies", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
