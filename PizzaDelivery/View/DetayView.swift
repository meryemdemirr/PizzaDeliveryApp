//
//  DetayView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct DetayView: View {
    
    var kategori = Categories(id: 1, isim: "Pizza", gorsel: "pizza", fiyat: 180, yenifiyat: nil)
    
    var body: some View {
        VStack {
            // ürünün detayları yazılacak
            //düzeltme
            
            Image(kategori.gorsel)
                .resizable()
                .frame(width: 50, height: 50)
            Text("\(kategori.fiyat)")
                .font(.system(size: 22))
        }
        .navigationTitle(kategori.isim)
        
    }
}

#Preview {
    DetayView()
}
