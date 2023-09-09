//
//  ProductDetailsView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 21.08.2023.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
            }
            Color.white
            
            VStack(alignment:.leading){
                ZStack(alignment: .topTrailing ){
                    HStack{
                        Spacer()
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(width: 300,height: 500)
                            Spacer()
                        
                    }
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.top, 63)
                        .padding(.trailing, 20)

                }
                VStack(alignment: .leading){
                    HStack{
                        Text(product.name)
                            .font(.title2.bold())
                        
                        Spacer()
                        
                        Text("$ \(product.price).00")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .background(Color("kSecondary"))
                            .cornerRadius(12)
                    }
                    .padding(.vertical)
                    
                    HStack(spacing: 10){ ForEach(0..<5){index in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.yellow)
                    }
                        Text("(4.5)")
                            .foregroundColor(.gray)
                        
                    }
                    .padding(.vertical)
                    
                    Text("Description")
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Text(product.description)
                    Spacer()
                    HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text("Size")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            
                            Text("Height: ")
                                .foregroundColor(.gray)
                            Text("Width: ")
                                .foregroundColor(.gray)
                            Text("Diameter: ")
                                .foregroundColor(.gray)
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Colors")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                            
                            Text("Blue")
                                .foregroundColor(.blue)
                            Text("Black")
                                .foregroundColor(.black)
                            Text("Off-white")
                                .foregroundColor(.gray)
                            
                            
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.vertical)
                   PaymentButton(action: {})
                        .frame(width: .infinity, height: 35)
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
                .offset(y: -30)
                
            }
        
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: prouductList[4])
    }
}
