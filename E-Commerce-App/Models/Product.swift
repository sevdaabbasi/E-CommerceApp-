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

var prouductList = [
    Product(name: "Bej Salaş Takım",
            image: "images1",
            description: " aaaaaaaaaaaaaaaaaaaaaaaaaa",
            supplier: "Moda",
            price: 500),
    Product(name: "Beyaz Kimono",
            image: "images2",
            description: " bbbbbbbbbbbbbbbbbb",
            supplier: "Moda",
            price: 450),
    Product(name: "Kargo Cep Pantolon",
            image: "images3",
            description: " ccccccccccccccccc",
            supplier: "Sefamerve",
            price: 699),
    Product(name: "Pudra Müslim Elbise",
            image: "images4",
            description: " ddddddddddddddddd",
            supplier: "Zara",
            price: 890),
    Product(name: "Yeşil Kadın Elbisesi",
            image: "images5",
            description: " eeeeeeeeeeeeeeeeeeeeeeeee",
            supplier: "Sefamerve",
            price: 670),
    Product(name: "Bağlamalı Elbise",
            image: "images6",
            description: "ffffffffffffffffffffffff ",
            supplier: "Kırmızı",
            price: 900),
    ]
    

