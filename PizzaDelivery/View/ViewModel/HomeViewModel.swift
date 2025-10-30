//
//  HomeViewModel.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var kategorilerListesi = [Categories]()
    
    func fetchKategoriler() {
        var liste = [Categories]()
        
        let k1 = Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 240, yenifiyat: nil, rating: 4.9, description: "A classic cheese pizza topped with a rich tomato sauce and a perfect blend of melted mozzarella. Crispy on the outside, soft on the inside — simple yet delicious.")
        let k2 = Categories(id: 2, isim: "Delivery Pizza", gorsel: "delivery pizza", fiyat: 150, yenifiyat: nil, rating: 4.4, description: "very delicious")
        let k3 = Categories(id: 3, isim: "Chicken Burger", gorsel: "burger", fiyat: 220, yenifiyat: nil, rating: 3.9, description: "pppp")
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kategorilerListesi = liste
    }
}
