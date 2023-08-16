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
    Product(name: "Bej Salaş Takım",
            image: "images1",
            description: " ",
            supplier: "Moda",
            price: 500);
    Product(name: "Beyaz Kimono",
            image: "images2",
            description: " ",
            supplier: "Moda",
            price: 500);
    Product(name: "Kargo Cep Pantolon",
            image: "images3",
            description: " ",
            supplier: "Sefamerve",
            price: 500);
    Product(name: "Pudra Müslim Elbise",
            image: "images4",
            description: " ",
            supplier: "Zara",
            price: 500);
    Product(name: "Yeşil Kadın Elbisesi",
            image: "images5",
            description: " ",
            supplier: "Sefamerve",
            price: 500);
    Product(name: "Bağlamalı Elbise",
            image: "images6",
            description: " ",
            supplier: "Kırmızı",
            price: 500);
    
}

