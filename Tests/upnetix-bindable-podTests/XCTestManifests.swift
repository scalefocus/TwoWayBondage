import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(upnetix_bindable_podTests.allTests),
    ]
}
#endif
