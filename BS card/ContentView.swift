//
//  ContentView.swift
//  BS card
//
//  Created by Oleksandr Smakhtin on 27.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.init(red: 0.3, green: 1, blue: 0.7), lineWidth: 5))
                Text("Your name")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(Font.custom("Pacifico-Regular", size: 45))
                Text("Job title")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                
                InfoView(info: "Your phone number", imageName: "phone.fill")
                InfoView(info: "Your E-mail address", imageName: "envelope.fill")
                
                    
                
            }
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


