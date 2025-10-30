//
//  CategoriesButton.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

struct CategoriesButton: View {
    var kategori : Categories
    @State private var selected = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Image(kategori.gorsel)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text(kategori.isim)
                    .font(.headline)
                    .font(.system(size: 25))
            }
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(selected ? Color.red :  Color.gray.opacity(0.1),lineWidth: 2))
            .background(Color.white.opacity(0.1))
                    .onTapGesture {
                        selected.toggle()// tıklayınca renk değişir
                        NavigationLink(destination: HomeView()){
                            
                        }
                    }
        }
        
    }
}

#Preview {
    CategoriesButton(kategori: .init(id: 1, isim: "Pizza", gorsel: "pizza", fiyat: 10, yenifiyat: nil, rating: 3.3, description: ""))
}
