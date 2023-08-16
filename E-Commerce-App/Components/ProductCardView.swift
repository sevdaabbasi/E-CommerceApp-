//
//  ProductCardView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 16.08.2023.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack{
            Color("kSecondary")
            
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 190)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding(.vertical, 1)
                    
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                        
                                 Text("$\(product.price)")
                        .foregroundColor(.black)
                        .bold()
                }
                
                Button{
                    cartManager.addToCart(product: product)
                } label:{
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                     }
                    
                }
        }
        .frame(width: 185, height: 280)
        .cornerRadius(15)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: prouductList[0])
            .environmentObject(CartManager())
    }
}
