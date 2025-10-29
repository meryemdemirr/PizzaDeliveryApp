//
//  PizzaDeliveryApp.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

@main
struct PizzaDeliveryApp: App {
    @StateObject var cartVM = CartViewModel()

    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(cartVM)
        }
    }
}
