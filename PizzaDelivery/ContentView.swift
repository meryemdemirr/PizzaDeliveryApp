//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    @State var kategorilerListesi : [CategoriesItem] = [
        CategoriesItem(isim: "Pizza", gorsel: "pizza"),
        CategoriesItem(isim: "Burger", gorsel: "burger"),
        CategoriesItem(isim: "Pasta", gorsel: "pasta")
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Image("user")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .padding(.leading)
                    
                    Text("Meryem ZEKOŞ")
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
                        CategoriesButton(kategori: .init(isim: "Pizza", gorsel: "pizza"))
                        
                        CategoriesButton(kategori: .init(isim: "Burger", gorsel: "burger"))
                        
                        CategoriesButton(kategori: .init(isim: "Pasta", gorsel: "pasta"))
                    }
                }
                
                GeometryReader { geometry in
                    let ekranGenislik = geometry.size.width
                    let item = (ekranGenislik-40)/2
                    
                    NavigationStack {
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                                ForEach(kategorilerListesi) { kategori in
                                    
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
    ContentView()
}
