
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

public enum Resources {}

// MARK: - Ping
extension Resources {
    public static func ping<Pong>(_ callback: @escaping Callback<Pong>) -> Resource<Pong> {
        return Resource(.ping, method: .GET, completion: callback)
    }
}

// MARK: - Simple
extension Resources {
    public static func simplePrice<PriceList>(ids: [String], vsCurrency: String, options: [SimplePriceOptions], _ callback: @escaping Callback<PriceList>) -> Resource<PriceList> {
        let params = SimplePriceParams(ids: ids,
                                       vsCurrency: vsCurrency,
                                       includeMarketCap: options.contains(.marketCap),
                                       include24hrVol: options.contains(.vol),
                                       include24hrChange: options.contains(.change),
                                       includeLastUpdatedAt: options.contains(.lastUpdated))
        let parse: (Data) -> PriceList = { data in
            var result = [SimplePrice]()
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                params.ids.forEach { id in
                    guard let item = json?[id] as? [String: Any] else { print("item not found"); return }
                    if let price = SimplePrice(json: item, id: id, prefix: vsCurrency) {
                        result.append(price)
                    }
                }
            } catch let e {
                print("json error: \(e)")
            }
            return result as! PriceList
        }