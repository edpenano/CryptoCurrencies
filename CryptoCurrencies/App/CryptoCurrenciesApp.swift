//
//  CryptoCurrenciesApp.swift
//  CryptoCurrencies
//
//  Created by Ed Penano on 12/4/20.
// https://edpenano.com
//

import SwiftUI

@main
struct CryptoCurrenciesApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

struct CryptoCurrenciesApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
