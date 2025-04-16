//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by PatrycjaOosthuizen on 16/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
           Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
