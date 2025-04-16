//
//  InfoView.swift
//  POLinkUp
//
//  Created by PatrycjaOosthuizen on 16/04/2025.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.teal)
                    
                Text(text)
            })
            .padding(.all)
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "Hello", imageName: "person.circle")
        .padding()
        .border(.gray)
  
}
