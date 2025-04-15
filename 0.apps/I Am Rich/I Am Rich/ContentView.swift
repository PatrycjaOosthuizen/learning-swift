//
//  ContentView.swift
//  I Am Rich
//
//  Created by PatrycjaOosthuizen on 15/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.4, blue: 0.5).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Text("I Am Rich")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                Image("diamond").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250, alignment: .center)
            }
        }
    }
}

#Preview {
    ContentView()
}
