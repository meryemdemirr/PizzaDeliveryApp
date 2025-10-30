//
//  ListView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 30.10.2025.
//

import SwiftUI

struct ListView: View {
    @ObservedObject private var viewModel = ListViewModel()
    @EnvironmentObject var cartvm: CartViewModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.flexible(),spacing: 20), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                    ForEach(viewModel.tamListe) { liste in
                        NavigationLink {
                            DetailView(kategori: liste, stepperDurum: 1)
                                .environmentObject(cartvm)
                        } label: {
                            CategoriesItem(kategori: liste, cartVM: _cartvm)
                        }

                        //
                    }
                }
                .onAppear {
                    viewModel.fetchAll()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
            }
            
        }//veritabanı eklenecek
        .searchable(text: $searchText, prompt: "Ara")
        .onChange(of: searchText) { oldValue, newValue in
            print("x")
        }
    }
}

#Preview {
    ListView()
        .environmentObject(CartViewModel())
}
