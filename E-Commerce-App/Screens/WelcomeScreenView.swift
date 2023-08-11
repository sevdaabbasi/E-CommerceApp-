//
//  WelcomeScreenView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 10.08.2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("Color3")
                VStack {
                    
                    Image("images")
                        
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
                    PrimaryButton(title: "Get Started")
                    NavigationLink(destination: SignInScreenView() .navigationBarHidden(true),
                                   label: { Text("Sıgn In")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color1"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x:0.0, y:16)
                            .padding(.vertical)
                    })
                    
        
                   
                    HStack {
                        Text("New around here? ")
                        Text("Sıgn Up")
                            .font(.title2)
                            .foregroundColor(Color("Color1"))
                    }
                    
                }
                
                .padding()
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
