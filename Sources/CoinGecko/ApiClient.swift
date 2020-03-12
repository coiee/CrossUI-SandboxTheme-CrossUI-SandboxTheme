
//
//  ApiClient.swift
//  
//
//  Created by Adrian Corscadden on 2020-07-03.
//

import Foundation

public typealias Callback<T> = (Result<T, CoinGeckoError>) -> Void

let CustomKeyUserInfoKey = CodingUserInfoKey(rawValue: "customKey")!

public struct Resource<T: Codable> {
    
    fileprivate let endpoint: Endpoint