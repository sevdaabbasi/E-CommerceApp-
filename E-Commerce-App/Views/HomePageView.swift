//
//  HomePageView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 16.08.2023.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                .edgesIgnoringSafeArea(.all)
                
                VStack{
                    AppBar()
                    
                    SearchView()
                    
                    imageSliderView()
                    
                    HStack{
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(Color("kPrimary"))
                    }
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(prouductList, id: \.id){product in
                                NavigationLink{
                                    Text(product.name)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
                
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing )
                    
                    Text("İstanbul, Turkey")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: Text("")){
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                
                Text("Find The Most \nBeautiful ")
                    .font(.largeTitle.bold())
                + Text("Clothes")
                    .font(.largeTitle.bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager() )
    }
}
