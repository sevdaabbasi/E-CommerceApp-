 //
//  imageSliderView.swift
//  E-Commerce-App
//
//  Created by Sevda Abbasi on 12.08.2023.
//

import SwiftUI

struct imageSliderView: View {
    @State private var  currentIndex = 0
    var slides: [String] = ["images25","images26","images27","images28","images29","images30","images31","images32"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .padding(1)
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary"): Color("kSecondary"))
                        .frame(width: 10, height: 10)
                
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }

    }
}

struct imageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        imageSliderView()
    }
}
