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
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Patrycja Oosthuizen")
                    .font(Font.custom("PlaywriteGBS-Regular", size: 32))
                    .bold()
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
