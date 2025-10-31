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
                
            
            List {
                ForEach(cartVM.products) { product in
                    CartItem(kategori: product)
                }
                .onDelete(perform: sil) // 👈 Kaydırarak silme aktif
            }
            
            
           /* ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(cartVM.products){ product in
                        CartItem(kategori: product)
                    }
                    .onDelete(perform: sil)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 20)
            }*/
        }
        
    }
    func sil(at offsets: IndexSet) {
        if let index = offsets.first {
            let product = cartVM.products[index]
            cartVM.products.remove(at: index) // Görsel olarak listeden sil
            cartVM.sil(id: product.id)        // id’sini gönder (fonksiyonda print yapıyor)
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartViewModel())
}
