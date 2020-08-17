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
    p