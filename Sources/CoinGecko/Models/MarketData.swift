
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