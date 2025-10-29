//
//  TabBarView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                }
        }
    }
}

#Preview {
    TabBarView()
}
