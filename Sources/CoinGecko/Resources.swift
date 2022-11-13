
//
//  Resources.swift
//  
//
//  Created by Adrian Corscadden on 2020-07-05.
//

import Foundation

public enum Endpoint: String {
    case ping = "/ping"
    
    case supportedVs = "/simple/supported_vs_currencies"
    case simplePrice = "/simple/price"
    
    case coinsList = "/coins/list"
    case coinsMarketChart = "/coins/%@/market_chart"
    case coin = "/coins/%@"
}