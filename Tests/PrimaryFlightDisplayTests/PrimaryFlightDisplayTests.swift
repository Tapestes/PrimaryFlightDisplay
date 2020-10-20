import XCTest
@testable import PrimaryFlightDisplay

final class PrimaryFlightDisplayTests: XCTestCase {
    func testExample() {
        let frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let pfd = PrimaryFlightDisplayView(frame: frame)
            pfd.setAltitude(0.0)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
