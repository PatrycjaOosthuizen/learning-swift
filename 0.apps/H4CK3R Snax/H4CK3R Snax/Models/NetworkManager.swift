//
//  NetworkManager.swift
//  H4CK3R Snax
//
//  Created by PatrycjaOosthuizen on 18/04/2025.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()

    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Network error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("No data received.")
                return
            }

            // For debugging:
            if let jsonString = String(data: data, encoding: .utf8) {
                print("JSON: \(jsonString)")
            }

            do {
                let results = try JSONDecoder().decode(Results.self, from: data)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {
                print("Decoding error:", error)
                // Fallback for UI testing
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.posts = [
                        Post(author: "tester", title: "Test Post", url: "https://google.com", num_comments: 42, created_at: "2024-04-18", objectID: "test1", points: 123, highlightResult: nil)
                    ]
                }
            }
        }

        task.resume()
    }
}
