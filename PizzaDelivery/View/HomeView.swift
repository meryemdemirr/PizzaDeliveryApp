//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    @ObservedObject private var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                ScrollView {
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
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                CategoriesButton(kategori: .init(id: 1, isim: "Pizza", gorsel: "pizza", fiyat: 180))
                                CategoriesButton(kategori: .init(id: 2, isim: "Burger", gorsel: "burger", fiyat: 220))
                                CategoriesButton(kategori: .init(id: 3, isim: "Pasta", gorsel: "pasta", fiyat: 200))
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    
                    VStack(spacing: 20) {
                        Text("Popular Foods")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            
                       
                        LazyVGrid(columns: [GridItem(.flexible(),spacing: 20), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                                ForEach(viewModel.kategorilerListesi) { kategori in
                                    CategoriesItem(kategori: kategori)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 20)
                    }
                    
                }
                
            }
            .onAppear {
                viewModel.fetchKategoriler()
            }
        }
        
    }
}

#Preview {
    HomeView()
}
