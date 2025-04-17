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
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal, 40)

                    
                }
            }
        }
    }

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}


#Preview {
    ContentView()
}

