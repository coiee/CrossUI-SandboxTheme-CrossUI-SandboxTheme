
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
    fileprivate let method: Method
    fileprivate let pathParam: String?
    fileprivate let params: [URLQueryItem]?
    fileprivate let parse: ((Data) -> T)? //optional parse function if Data isn't directly decodable to T
    fileprivate let customKey: String?