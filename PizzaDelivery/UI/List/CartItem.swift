//
//  CartItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct CartItem: View {
    var kategori: Categories
    
    var body: some View {
        HStack {
            Image(kategori.gorsel)
                .resizable()
                .scaledToFit()
                .frame(height: 130)
                .cornerRadius(10)
            
            VStack(spacing: 10){
                Text("\(kategori.isim)")
                    .font(.headline)
                    .foregroundColor(.black)
              
                Text("\(kategori.fiyat) ₺")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .bold()
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}

#Preview {
    CartItem(kategori: Categories(id: 1, isim: "a", gorsel: "burger", fiyat: 100, yenifiyat: nil))
}
