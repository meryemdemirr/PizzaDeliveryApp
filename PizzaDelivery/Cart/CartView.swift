//
//  CartView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartVM: CartViewModel
   
    var body: some View {
        VStack {
            Text("My Orders")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.leading,10)
                
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(cartVM.products){ product in
                        CartItem(kategori: product)
                    }
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartViewModel())
}
