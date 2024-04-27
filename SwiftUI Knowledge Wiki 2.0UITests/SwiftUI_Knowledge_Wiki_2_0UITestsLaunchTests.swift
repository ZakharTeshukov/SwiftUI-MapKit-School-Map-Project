//
//  SwiftUI_Knowledge_Wiki_2_0UITestsLaunchTests.swift
//  SwiftUI Knowledge Wiki 2.0UITests
//
//  Created by Zakhar Teshukov on 4/27/24.
//

import XCTest

final class SwiftUI_Knowledge_Wiki_2_0UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
