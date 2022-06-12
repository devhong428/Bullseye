//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by KyuheeHong on 2022/06/10.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {
    
    //create property
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
