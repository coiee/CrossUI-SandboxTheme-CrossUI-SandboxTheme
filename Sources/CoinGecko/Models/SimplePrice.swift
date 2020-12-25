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
   