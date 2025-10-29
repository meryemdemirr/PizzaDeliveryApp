//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

struct CategoriesItem: View {
    var kategori = Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 100)
    var genislik = 0.0
    
    var body: some View {
        VStack {
            Image(kategori.gorsel)
                .resizable()
                .frame(width: genislik)
            
            HStack {
                Text("\(kategori.fiyat) ₺")
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                
                Text("Sepete Ekle")
                    .padding()
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .background(.indigo)
                    .cornerRadius(8)
                    .padding(.bottom,5)
                onTapGesture {
                    print("\(kategori.isim) sepete eklendi")
                }
            }
        }.background(Rectangle().fill(Color.white).shadow(radius: 3))
    }
}

#Preview {
    CategoriesItem()
}
