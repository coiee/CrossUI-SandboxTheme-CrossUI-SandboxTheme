
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
    "CNN" : "cnn",
    "CRPT" : "crypterium",
    "CS" : "credits",
    "CSP" : "caspian",
    "CVC" : "civic",
    "DAI" : "dai",
    "DENT" : "dent",
    "DGD" : "digixdao",
    "DNT" : "district0x",
    "DOV" : "dovu",
    "DRGN" : "dragonchain",
    "EDG" : "edgeless",
    "EDO" : "eidoo",
    "ELF" : "aelf",
    "ENG" : "enigma",
    "ENJ" : "enjincoin",
    "EOS" : "eos",
    "FSN" : "fsn",
    "FUN" : "funfair",
    "FXC" : "flexacoin",
    "GBX" : "globitex",
    "GNO" : "gnosis",
    "GNT" : "golem",
    "GNX" : "genaro-network",
    "GTO" : "gifto",
    "GUP" : "matchpool",
    "GUSD" : "gemini-dollar",
    "GVT" : "genesis-vision",
    "HPB" : "high-performance-blockchain",
    "HYDRO" : "hydro",
    "ICN" : "ic-node",
    "ICX" : "icon",
    "IOST" : "iostoken",
    "ITC" : "iot-chain",
    "IXT" : "insurex",
    "KIN" : "kin",
    "KNC" : "kyber-network",
    "LEND" : "ethlend",
    "LINK" : "chainlink",
    "LOOM" : "loom-network",
    "LRC" : "loopring",
    "LUN" : "lunyr",
    "MAN" : "matrix-ai-network",
    "MANA" : "decentraland",
    "MCO" : "monaco",
    "MKR" : "maker",
    "MTL" : "metal",
    "MYST" : "mysterium",
    "NAS" : "nebulas",
    "NEXO" : "nexo",
    "NMR" : "numeraire",
    "NPXS" : "pundi-x",