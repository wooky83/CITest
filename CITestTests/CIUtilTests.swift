import XCTest
@testable import CITest

final class CIUtilTests: XCTestCase {

    func testUtilString() throws {
        XCTAssertEqual("1", "1")
    }

    func testUtilInt() throws {
        XCTAssertEqual(1, 1)
    }

    func testCollectionSafeSubscript() throws {
        let array = [1, 2, 3, 4, 5]
        XCTAssertEqual(array[safe: 0], 1)
        XCTAssertEqual(array[safe: 4], 5)
        XCTAssertNil(array[safe: 5])
    }

    func testCollectionCircularSubscript() throws {
        let array = [1, 2, 3, 4, 5]
        XCTAssertEqual(array[circular: 0], 1)
        XCTAssertEqual(array[circular: 4], 5)
        XCTAssertEqual(array[circular: 5], 1)
        XCTAssertEqual(array[circular: 6], 2)
    }

    func testCollectionArrayDuplicated() throws {
        let array = [1, 2, 3, 4, 5, 4, 5]
        XCTAssertEqual(array.arrayDuduplicated.sorted(), [1, 2, 3, 4, 5])
    }

}
