//
//  InfoView.swift
//  BS card
//
//  Created by Oleksandr Smakhtin on 28.08.2022.
//

import SwiftUI

struct InfoView: View {
    
    let info: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 350, height: 65, alignment: .center)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(info)
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(info: "Information", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
