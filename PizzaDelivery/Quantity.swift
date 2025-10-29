//
//  Quantity.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 29.10.2025.
//

import SwiftUI

struct Quantity: View {
    var scale: CGFloat = 1.0
    @Binding var quantity: Int
    var body: some View {
        HStack(spacing: 20) {
                    Button {
                        if quantity > 1 { quantity -= 1 }
                    } label: {
                        Image(systemName: "minus")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 35, height: 35)
                            //.background(Circle().fill(Color(.systemGray6)))
                            .background(Circle().fill(Color("quantity")))
                            
                    }

                    Text("\(quantity)")
                        .font(.title3)
                        .fontWeight(.semibold)

                    Button {
                        quantity += 1
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 35, height: 35)
                            .background(Circle().fill(Color("quantity")))
                            
                    }
                }
        .scaleEffect(scale) // 👈 burası önemli
                .animation(.easeInOut, value: scale)

    }
}

#Preview {
    Quantity(quantity:  .constant(1))
}
