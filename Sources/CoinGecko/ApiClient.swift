
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
    fileprivate let completion: (Result<T, CoinGeckoError>) -> Void //called on main thread
    
    public init(_ endpoint: Endpoint,
         method: Method,
         pathParam: String? = nil,
         params: [URLQueryItem]? = nil,
         parse: ((Data) -> T)? = nil,
         customKey: String? = nil,
         completion: @escaping (Result<T, CoinGeckoError>) -> Void) {
        self.endpoint = endpoint
        self.method = method
        self.pathParam = pathParam
        self.params = params
        self.parse = parse
        self.customKey = customKey
        self.completion = completion
    }
}

public enum Method: String {
    case GET
}

public enum CoinGeckoError: Error {
    case general
    case noData
    case jsonDecoding
}

public class CoinGeckoClient {
        
    public init() {}
    
    private let baseURL = "https://api.coingecko.com/api/v3"
    
    public func load<T: Codable>(_ resource: Resource<T>) {
        let completion = resource.completion
        var path = resource.endpoint.rawValue
        path = resource.pathParam == nil ? path : String(format: path, resource.pathParam!)