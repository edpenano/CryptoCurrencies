//
//  SettingsRowView.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 1/3/21.
// https://edpenano.com
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linklabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                // 'command' click -> "Make Conditional"
                if (content != nil) {
                    Text(content!)
                } else if (linklabel != nil && linkDestination != nil) {
                    Link(linklabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.blue)
                }
                else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Ed Penano")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linklabel: "edpenano.com", linkDestination: "edpenano.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
