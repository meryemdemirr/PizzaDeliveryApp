//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import Foundation

class Categories : Identifiable{
    let id : Int
    let isim: String
    let gorsel: String
    let fiyat: Int
    let yenifiyat: Int?
    let rating: Double
    
    var ratingText: String {
            if rating == floor(rating) {
                return "\(Int(rating))"
            } else {
                return String(format: "%.1f", rating)
            }
        }
    
    init(id: Int, isim: String, gorsel: String, fiyat: Int, yenifiyat: Int?, rating: Double) {
        self.id = id
        self.isim = isim
        self.gorsel = gorsel
        self.fiyat = fiyat
        self.yenifiyat = yenifiyat
        self.rating = rating
    }
}

