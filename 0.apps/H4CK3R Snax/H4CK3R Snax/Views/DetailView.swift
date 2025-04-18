//
//  DetailView.swift
//  H4CK3R Snax
//
//  Created by PatrycjaOosthuizen on 18/04/2025.
//

import SwiftUI

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
            .navigationTitle("Article")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(url: "https://google.com")
}

