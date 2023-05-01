//
//  TaxCalcApp.swift
//  TaxCalc
//
//  Created by 김형관 on 2023/04/26.
//

import SwiftUI

@main
struct TaxCalcApp: App {
    @StateObject var taxExample = Tax()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(taxExample)
        }
    }
}
