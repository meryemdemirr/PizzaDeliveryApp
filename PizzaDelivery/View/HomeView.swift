//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @State var kategorilerListesi : [Categories] = [
        Categories(id: 1, isim: "Pizza", gorsel: "pizza", fiyat: 180),
        Categories(id: 2, isim: "Burger", gorsel: "burger", fiyat: 220),
        Categories(id: 3, isim: "Pasta", gorsel: "pasta", fiyat: 200)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .padding(.leading)
                    
                    Text("Meryem Demir")
                        .font(.headline)
                    
                    Spacer()
                    
                    Image("sepet")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.trailing,15)
                }
                
                VStack(spacing: 15) {
                    Text("Extra Discount")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                    
                    Image("pizzasale")
                        .resizable()
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .scaledToFit()   
                }
                .padding(.bottom)
                
                VStack {
                    Text("Categories")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,15)
                    
                    HStack(spacing: 15) {
                        CategoriesButton(kategori: .init(id: 1, isim: "Pizza", gorsel: "pizza", fiyat: 180))
                        
                        CategoriesButton(kategori: .init(id: 2, isim: "Burger", gorsel: "burger", fiyat: 220))
                        
                        CategoriesButton(kategori: .init(id: 3, isim: "Pasta", gorsel: "pasta", fiyat: 200))
                    }
                }
                
                GeometryReader { geometry in
                    let ekranGenislik = geometry.size.width
                    let item = (ekranGenislik-40)/2
                    
                    NavigationStack {
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                                ForEach(kategorilerListesi) { kategori in
                                    NavigationLink(destination: DetayView()) {
                                        
                                    }
                                }
                            }
                        }
                    }
                }
                
                
                
            }
        }
        
    }
}

#Preview {
    HomeView()
}
