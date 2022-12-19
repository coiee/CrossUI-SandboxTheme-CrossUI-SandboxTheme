
import XCTest
@testable import CoinGecko

final class SimpleTests: XCTestCase {

    private let client = CoinGeckoClient()

    func testIncludeAll() {
        let exp = XCTestExpectation()
        let ids = ["bitcoin"]
        let vsCurrency = "cad"
        let price = Resources.simplePrice(ids: ids, vsCurrency: vsCurrency, options: SimplePriceOptions.allCases) { (result: Result<PriceList, CoinGeckoError>) in
            guard case .success(let prices) = result else { XCTFail(); exp.fulfill(); return }
            guard let first = prices.first else { XCTFail("Prices should not be empty"); exp.fulfill(); return }
            