import XCTest
@testable import CITest

final class CIUtilTests: XCTestCase {

    func testUtilString() throws {
        XCTAssertEqual("1", "1")
    }

    func testFailTest() throws {
        XCTAssertEqual("1", "2")
    }

}
