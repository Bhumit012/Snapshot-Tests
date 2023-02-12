//
//  TestScreen1.swift
//  SnapshotTestAppTests
//
//  Created by Bhumit Muchhadia on 2023-01-06.
//

import XCTest
import SwiftUI
@testable import SnapshotTestApp
import SnapshotTesting

final class TestScreen1: XCTestCase {
    var screenTest: UIViewController!
    
    override func setUpWithError() throws {
        //record the screenshot if need to update or make a fresh one. (this should be done if test fails or is new).
       //isRecording = true
        
        let testView = TestScreen()
        screenTest = UIHostingController(rootView: testView)
        
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        screenTest = nil
    }
    
    func testExample() throws {
        assertSnapshot(
            matching: screenTest,
            as: .image(on: .iPhone13))
    }
}
