//
//  CartViewModel.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import Foundation

class CartViewModel : ObservableObject {
    @Published var products = [Categories]()
    
    func add(product : Categories) {
        products.append(product)
    }
}
