//
//  CoinData.swift
//  ByteCoinChallenge
//
//  Created by PatrycjaOosthuizen on 03/04/2025.
//

import Foundation

// This struct helps convert the JSON data into a Swift object.
// If you also need to turn it back into JSON, use Codable instead of Decodable.
struct CoinData: Decodable {

    // This stores the latest Bitcoin price from the data we receive.
    // Since it's a number with decimals, we use Double.
    let rate: Double
}

