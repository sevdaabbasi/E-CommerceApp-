//
//  SignUpScreenView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 11.08.2023.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var email = " "
    @State private var password =  " "
    @State private var username: String = " "
   
    
    var body: some View {
        ZStack {
           
            Color (.white).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack{
                    
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    
                    /*SocalLoginButton(image: Image("apple"), text: Text("Sign Up with Apple"))
                        .padding(.bottom,-10)
                    
                   SocalLoginButton(image: Image("google"), text: Text("Sign Up with Google")
                        .foregroundColor(Color("kPrimary")))
                    .padding(.vertical, -9.0)
                    */
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("password", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.12), radius: 60, x: 0.0, y: 16)
                        .padding(.bottom)
                   
                        TextField("username", text: $username)
                        .font(.title3)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.12), radius: 60, x: 0.0, y: 16)
                        .padding(.bottom)
                   
                        
                      
                    
                    
                    TextField("Email", text: $password)
                    
                        .font(.title3)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.12), radius: 60, x: 0.0, y: 16)
                        .padding(.bottom)
                   
                    PrimaryButton(title: "Sign Up")
                    
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
   

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}


