import XCTest
@testable import DTPageControl

final class DTPageControlTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testToSetValidCurrentPage() {
        let pageControl = DTPageControl(frame: NSRect(x: 0, y: 0, width: 100, height: 10))
        pageControl.numberOfPages = 3
        pageControl.draw(pageControl.frame)
        XCTAssertTrue(pageControl.currentPage == 0)
        pageControl.currentPage = 1
        XCTAssertTrue(pageControl.currentPage == 1)
        pageControl.currentPage = 2
        XCTAssertTrue(pageControl.currentPage == 2)
    }

    func testToSetInvalidCurrentPage() {
        let pageControl = DTPageControl(frame: NSRect(x: 0, y: 0, width: 100, height: 10))
        pageControl.numberOfPages = 3
        pageControl.draw(pageControl.frame)
        XCTAssertTrue(pageControl.currentPage == 0)
        pageControl.currentPage = 3
        XCTAssertTrue(pageControl.currentPage == 2)
        pageControl.currentPage = -1
        XCTAssertTrue(pageControl.currentPage == 0)
    }

    static var allTests = [
        ("testToSetValidCurrentPage", testToSetValidCurrentPage),
        ("testToSetInvalidCurrentPage", testToSetInvalidCurrentPage),
    ]
}
