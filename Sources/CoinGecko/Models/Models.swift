
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
    "ADT" : "adtoken",
    "ADX" : "adex",
    "AE" : "aeternity",
    "AGI" : "singularitynet",
    "AION" : "aion",
    "AMB" : "amber",
    "AMLT" : "coinfirm-amlt",
    "ANT" : "aragon",
    "APPC" : "appcoins",
    "ARN" : "aeron",
    "ATMI" : "atonomi",
    "AUTO" : "cube",
    "BIX" : "bibox-token",
    "BLZ" : "bluzelle",
    "BNB" : "binancecoin",
    "BNT" : "bancor",
    "BRD" : "bread",
    "BTM" : "bytom",
    "CAS" : "cashaa",
    "CFI" : "cofound-it",
    "CMT" : "cybermiles",
    "CND" : "cindicator",