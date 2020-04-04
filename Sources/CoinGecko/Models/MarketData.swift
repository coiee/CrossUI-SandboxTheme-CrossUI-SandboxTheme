
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