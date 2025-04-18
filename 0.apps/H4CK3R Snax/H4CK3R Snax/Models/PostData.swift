//
//  PostData.swift
//  H4CK3R Snax
//
//  Created by PatrycjaOosthuizen on 18/04/2025.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String { objectID } // Conform to Identifiable

    let author: String
    let title: String
    let url: String?
    let num_comments: Int
    let created_at: String
    let objectID: String
    let points: Int

    // Optional highlight fields (not used in UI here but kept for future use)
    let highlightResult: HighlightResult?

    struct HighlightResult: Codable {
        let author: HighlightField
        let title: HighlightField
        let url: HighlightField
    }

    struct HighlightField: Codable {
        let value: String
    }
}
