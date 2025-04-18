//
//  ContentView.swift
//  H4CK3R Snax
//
//  Created by PatrycjaOosthuizen on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🟧 💻 🧠")
                .font(.largeTitle)
            NavigationView {
                List(posts) { post in
                    Text(post.title)
                }
                .navigationBarTitle("H4CK3R Snax")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


let posts = [
    Post(id: "1", title: "HELLO"),
    Post(id: "2", title: "WORLD"),
    Post(id: "3", title: "💻"),
]
