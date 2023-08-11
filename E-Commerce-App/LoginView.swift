//
//  LoginView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 10.08.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = " "
    var body: some View {
       
       WelcomeScreenView()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("Color1"))
            .cornerRadius(50)
    }
}


