//
//  CartManager.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 16.08.2023.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var product: [Product] = []
    
    @Published private(set) var total: [Product] = []
    
    
}
