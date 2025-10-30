//
//  DetailViewModel.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 30.10.2025.
//

import Foundation

class DetailViewModel : ObservableObject {
    @Published var detayListesi = [Categories]()
    
    func fetchProducts() {
        var detayListe = [Categories]()
        
        let d1 = Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 240, yenifiyat: nil, rating: 4.4, description: "A classic cheese pizza topped with a rich tomato sauce and a perfect blend of melted mozzarella. Crispy on the outside, soft on the inside — simple yet delicious.")
        let d2 = Categories(id: 2, isim: "Delivery Pizza", gorsel: "delivery pizza", fiyat: 150, yenifiyat: nil, rating: 4.4, description: "very delicious")
        let d3 = Categories(id: 3, isim: "Chicken Burger", gorsel: "burger", fiyat: 220, yenifiyat: nil, rating: 3.9, description: "pppp")
        
        detayListe.append(d1)
        detayListe.append(d2)
        detayListe.append(d3)
        detayListesi = detayListe
    }
        
}
