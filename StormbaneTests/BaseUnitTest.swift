//
//  StormbaneTests.swift
//  StormbaneTests
//
//  Created by Yavor Dimov on 5/10/19.
//  Copyright © 2019 Yavor Dimov. All rights reserved.
//

import XCTest
@testable import Stormbane

class BaseUnitTest: XCTestCase {
    var weatherViewController: WeatherViewController?

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        weatherViewController = navigationController.viewControllers[0] as? WeatherViewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        //POC test
        XCTAssert(weatherViewController?.latitude == "39.7529908")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
