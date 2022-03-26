//
//  SimplePrice.swift
//  
//
//  Created by Adrian Corscadden on 2020-07-04.
//

import Foundation

public typealias PriceList = [SimplePrice]

public struct SimplePrice: Codable {
    public let id: String
    public let price: Double
    public let marketCap: Double?
    public let vol24hr: Double?
    public let change24hr: Double?
    public let lastUpdatedAt: Int?
    
    init?(json: [String: Any], id: String, prefix: String) {
        
        self.id = id
        
        //non-optional
        guard let price = json["\(prefix)"] as? Double else { return nil }
        self.price = price
        
        //optionals
        self.marketCap = json["\(prefix)_market_cap"] as? Double
        self.vol24hr = json["\(prefix)_24h_vol"] as? Double
        self.change24hr = json["\(prefix)_24h_change"] as? Double
        self.lastUpdatedAt = json["last_updated_at"] as? Int
    }
}

public enum SimplePriceOptions: CaseIterable {
    case marketCap
    case vol
    case change
    case lastUpdated
}

struct SimplePriceParams: Codable {
    let ids: [String]
    let vsCurrency: String
    let includeMarketCap: Bool
    let include24hrVol: Bool
    let include24hrChange: Bool
    let includeLastUpdatedAt: Bool
    
    enum CodingKeys: String, CodingKey {
        case ids, includeMarketCap, includeLastUpdatedAt
        case vsCurrency = "vs_currencies"
        case include24hrVol = "include_24hr_vol"
        case include24hrChange = "include_24hr_change"
    }
}

extension SimplePriceParams {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ids.joined(separator: ","), 