
//
//  CoinTests.swift
//  
//
//  Created by Adrian Corscadden on 2020-07-09.
//

import XCTest
@testable import CoinGecko

final class CoinTests: XCTestCase {

    private let client = CoinGeckoClient()
    
    func testListCoins() {