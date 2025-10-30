//
//  ListViewModel.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 30.10.2025.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var tamListe = [Categories]()
    
    func fetchAll() {
        var all = [Categories]()
        
        let a1 = Categories(id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", fiyat: 240, yenifiyat: nil, rating: 4.9, description: "A classic cheese pizza topped with a rich tomato sauce and a perfect blend of melted mozzarella. Crispy on the outside, soft on the inside — simple yet delicious.")
        let a2 = Categories(id: 2, isim: "Delivery Pizza", gorsel: "delivery pizza", fiyat: 150, yenifiyat: nil, rating: 4.4, description: "A crispy chicken fillet served with fresh lettuce, tomato, and creamy mayo in a soft toasted bun — a perfect choice for chicken lovers.")
        let a3 = Categories(id: 3, isim: "Fettuccine", gorsel: "fettuccine", fiyat: 220, yenifiyat: nil, rating: 3.9, description: "Tender fettuccine noodles tossed in a creamy Alfredo sauce made with butter, Parmesan cheese, and a hint of garlic. A rich and indulgent classic Italian dish")
        let a4 = Categories(id: 4, isim: "Penne", gorsel: "penne", fiyat: 220, yenifiyat: nil, rating: 3.9, description: "Delicious penne pasta cooked al dente, served with a rich tomato and basil sauce, garnished with freshly grated Parmesan cheese. Perfectly balanced flavors for a comforting meal")
        
        all.append(a1)
        all.append(a2)
        all.append(a3)
        all.append(a4)
        
        tamListe = all
        
    }
}
