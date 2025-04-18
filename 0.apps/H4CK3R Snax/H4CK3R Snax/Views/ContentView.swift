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
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                            .bold()
                            .frame(width: 50, alignment: .leading)
                        VStack(alignment: .leading) {
                            Text(post.title)
                                .font(.headline)
                            Text("By \(post.author)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("🟧 H4CK3R Snax")
            .onAppear {
                networkManager.fetchData()
            }
        }
    }
}

#Preview {
    ContentView()
}
