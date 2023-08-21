//
//  CartView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 16.08.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.isEmpty {
                Text("Your Cart is Empty")
            } else {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                
                HStack {
                    Text("Your Total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                
                .padding()
                PaymentButton(action: {})
                    .padding()
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager()) // Eğer cartManager çevresel nesnesini önizleme için başlatmanız gerekiyorsa ekleme yapabilirsiniz
    }
}
