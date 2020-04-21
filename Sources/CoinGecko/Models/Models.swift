
//
//  Models.swift
//  
//
//  Created by Adrian Corscadden on 2020-07-03.
//

import Foundation

typealias SupportedList = [String]
typealias CoinList = [Coin]

public struct Pong: Codable {
    let gecko_says: String
}

public struct Coin: Codable {
    let id: String
    let symbol: String
    let name: String
}


public enum CoinGeckoCodes {
    public static let map = ["BTC" : "bitcoin",
    "BCH" : "bitcoin-cash",
    "ETH" : "ethereum",
    "HBAR" : "hedera-hashgraph",
    "XRP" : "ripple",
    "1ST" : "first-blood",
    "ABT" : "arcblock",