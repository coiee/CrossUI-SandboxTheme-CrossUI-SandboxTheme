
//
//  MarketData.swift
//  
//
//  Created by Adrian Corscadden on 2020-09-08.
//

import Foundation

public struct MarketContainer: Codable {
    
    public var marketCap: Double { return market_data.marketCap }
    public var totalVolume: Double { return market_data.totalVolume }
    public var high24h: Double { return market_data.high24h }
    public var low24h: Double { return market_data.low24h }
    
    private let market_data: MarketData
}

public struct MarketData: Codable {
    
    public let marketCap: Double
    public let totalVolume: Double
    public let high24h: Double
    public let low24h: Double
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DynamicCodingKeys.self)
        guard let customKey = decoder.userInfo[CustomKeyUserInfoKey] as? String else { throw CoinGeckoError.jsonDecoding }
        self.marketCap = try extractDouble(container: container, key1: "market_cap", key2: customKey)
        self.totalVolume = try extractDouble(container: container, key1: "total_volume", key2: customKey)
        self.high24h = try extractDouble(container: container, key1: "high_24h", key2: customKey)
        self.low24h = try extractDouble(container: container, key1: "low_24h", key2: customKey)
    }
}
