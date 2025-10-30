//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//
import SwiftUI

struct CategoriesItem: View {
    var kategori: Categories
    @State private var showToast = false
    @EnvironmentObject var cartVM: CartViewModel
    
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
                
                VStack(alignment: .leading, spacing: 4) {
                    if let yenifiyat = kategori.yenifiyat {
                                        // Eski fiyat
                        Text("\(kategori.fiyat) ₺")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .strikethrough(true, color: .gray)
                                        
                                // İndirimli fiyat
                        Text("\(yenifiyat) ₺")
                            .font(.subheadline)
                            .foregroundColor(.red)
                            .bold()
                    } else {
                                    // Normal fiyat
                        Text("\(kategori.fiyat) ₺")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .bold()
                    }
                }

               
                
                Spacer()
                
                Button(action: {
                    cartVM.add(product: kategori)
                }) {
                    Text("Sepete Ekle")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .foregroundColor(.white)
                        .background(Color("colorr"))
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
    CategoriesItem(kategori: Categories(id: 1, isim: "Cheese Pizza", gorsel: "pizza", fiyat: 100, yenifiyat: nil, rating: 2.2, description: ""))
        .environmentObject(CartViewModel())
}
