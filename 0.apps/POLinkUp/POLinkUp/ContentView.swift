//
//  ContentView.swift
//  POLinkUp
//
//  Created by PatrycjaOosthuizen on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.00, green: 0.38, blue: 0.40)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("PO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                Text("Patrycja Oosthuizen")
                    .font(Font.custom("PlaywriteGBS-Regular", size: 32))
                    .bold()
                    .foregroundColor(.white)
                Text("Aspiring Software Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 19))
                  .fontWeight(.light)
                Divider()
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .overlay(Text("T"))
            }
            .padding(.all)
        }
    }
}

#Preview {
    ContentView()
}
