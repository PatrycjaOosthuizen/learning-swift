//
//  ContentView.swift
//  H4CK3R Snax
//
//  Created by PatrycjaOosthuizen on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            Text("🟧 💻 🧠")
                .font(.largeTitle)
            NavigationView {
                List(networkManager.posts) { post in
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                }
                .navigationBarTitle("H4CK3R Snax")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "HELLO"),
//    Post(id: "2", title: "WORLD"),
//    Post(id: "3", title: "💻"),
//]
