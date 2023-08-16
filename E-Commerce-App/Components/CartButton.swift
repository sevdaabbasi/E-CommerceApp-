//
//  CartButton.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 16.08.2023.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing ){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .font(.title2)
                .padding(5)
            if (numberOfProducts > 0) {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
