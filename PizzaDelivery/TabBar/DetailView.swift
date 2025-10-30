//
//  DetayView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct DetailView: View {
    
    var kategori: Categories
    @State private var quantity = 1
    @EnvironmentObject var cartVM: CartViewModel
    @State var stepperDurum: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Image(kategori.gorsel)
                .resizable()
                .padding(.bottom,30)
                .frame(width: 200, height: 200)
                .padding(.bottom,40)
            VStack(spacing: 5) {
                Text("\(kategori.isim)")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Text("\(kategori.ratingText)")
                    //.font(.system(size: 17, design: .default))
                        .font(.system(size: 15))
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                
                HStack {
                    Text("\(kategori.fiyat)₺")
                        .font(.system(size: 25, design: .rounded))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                    Quantity(scale: 1.0, quantity: $quantity)
                }
                
                Text("Description")
                    .font(.system(size: 25, design: .rounded))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("\(kategori.description)")
                    .foregroundColor(.black)
                    .opacity(0.5)
                    .padding(.bottom,50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button(action: {
                        cartVM.add(product: kategori)
                    }) {
                        Text("Sepete Ekle")
                            .frame(width: 360, height: 40)
                            .font(.headline)
                            .padding(.vertical, 6)
                            .foregroundColor(.white)
                            .background(Color("colorr"))
                            .cornerRadius(10)
                    }
                    .padding(.top, 50)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 15)
        }
        .navigationTitle(kategori.isim)
    }
}


#Preview {
    DetailView(kategori: Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 200, yenifiyat: nil, rating: 4.9, description: ""), stepperDurum: 1)
}
