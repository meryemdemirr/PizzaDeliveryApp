//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 28.10.2025.
//

import Foundation

struct CategoriesItem : Identifiable{
    let id = UUID()
    let isim: String
    let gorsel: String
}

let kategoriler = [CategoriesItem(isim: "Pizza", gorsel: "pizza"), CategoriesItem(isim: "Burger", gorsel: "burger"), CategoriesItem(isim: "Pasta", gorsel: "pasta")]
