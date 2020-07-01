import XCTest
@testable import LunarCore

final class LunarCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual("\(LunarCore.calendar(2020, 6))", "")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
