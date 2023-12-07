import XCTest
@testable import CITest

final class CITestTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertEqual("1", "1")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            XCTAssertEqual("1", "1")
        }
    }

    func testStringEqaul() throws {
        XCTAssertEqual("1", "1")
    }

    func testDelayed() async throws {
        try await Task.sleep(until: .now + .seconds(2))
        XCTAssertTrue(true)
    }

}
