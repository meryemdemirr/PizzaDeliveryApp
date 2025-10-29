//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//
import SwiftUI

struct CategoriesItem: View {
    var kategori: Categories
    
    var body: some View {
        VStack(spacing: 10) {
            // Ürün görseli
            Image(kategori.gorsel)
                .resizable()
                .scaledToFit()
                .frame(height: 130)
                .cornerRadius(10)
            
            // Ürün ismi
            Text(kategori.isim)
                .font(.headline)
                .foregroundColor(.black)
            
            // Fiyat + Buton
            HStack {
                Text("\(kategori.fiyat) ₺")
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    print("\(kategori.isim) sepete eklendi 🛒")
                }) {
                    Text("Sepete Ekle")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .foregroundColor(.white)
                        .background(Color("color"))
                        .cornerRadius(8)
                }
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
    CategoriesItem(kategori: Categories(id: 1, isim: "Cheese Pizza", gorsel: "pizza", fiyat: 100))
}
