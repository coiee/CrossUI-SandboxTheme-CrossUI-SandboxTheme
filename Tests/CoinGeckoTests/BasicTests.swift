
import XCTest
@testable import CoinGecko

final class BasicTests: XCTestCase {
    
    private let client = CoinGeckoClient()
    
    func testPing() {
        let exp = XCTestExpectation()
        let ping = Resources.ping { (result: Result<Pong, CoinGeckoError>) in
            guard case .success(let pong) = result else { XCTFail(); exp.fulfill(); return }