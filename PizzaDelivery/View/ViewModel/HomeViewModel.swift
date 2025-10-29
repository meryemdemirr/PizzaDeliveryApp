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
        
        let k1 = Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 100)
        let k2 = Categories(id: 2, isim: "Delivery Pizza", gorsel: "delivery pizza", fiyat: 150)
        let k3 = Categories(id: 3, isim: "Chicken Burger", gorsel: "burger", fiyat: 220)
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kategorilerListesi = liste
    }
}
