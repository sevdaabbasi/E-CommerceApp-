//
//  SignInScreenView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 10.08.2023.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = " "
    @State private var password: String = " "
    var body: some View {
        ZStack {
            Color (.white).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    SocalLoginButton(image: Image("apple"), text: Text("Sign In with Apple"))
                        .padding(.bottom,-20)
                    
                    SocalLoginButton(image: Image("google"), text: Text("Sign In with Google")
                        .foregroundColor(Color("kPrimary")))
                    .padding(.bottom, 10)
                    
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.12), radius: 60 , x: 0.0, y: 16)
                    
                    
                    TextField("password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.12), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Sıgn In")
                    
                    
                }
                Spacer()
                Divider()
                Spacer()
                Text(" You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color("Color1"))
                Spacer()
                
            }
            .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct  SocalLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        HStack {
            
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
                .padding(.leading)
            Spacer()
           text
                .font(.title3)
               
            Spacer()
        }
        .padding()
        .frame(width: 360, height: 50)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x:0.0, y:16)
        .padding(.vertical)
    }
}
