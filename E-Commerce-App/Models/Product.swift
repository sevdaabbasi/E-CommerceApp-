//
//  Product.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 11.08.2023.
//

import Foundation

struct Product : Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    
}

var prouductList = {
    Product(name: "Product1",
            image: "images1",
            description: " ",
            supplier: "Moda",
            price: 500),
    Product(name: "Product2",
            image: "images2",
            description: " ",
            supplier: "Moda",
            price: 500),
    Product(name: "Product3",
            image: "images3",
            description: " ",
            supplier: "Sefamerve",
            price: 500),
    Product(name: "Product4",
            image: "images4",
            description: " ",
            supplier: "Zara",
            price: 500),
    Product(name: "Product5",
            image: "images5",
            description: " ",
            supplier: "Sefamerve",
            price: 500),
    Product(name: "Product6",
            image: "images6",
            description: " ",
            supplier: "Kırmızı",
            price: 500)
    
}

