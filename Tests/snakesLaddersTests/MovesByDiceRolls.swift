//
//  File.swift
//  
//
//  Created by Jorge Arindia on 25/1/23.
//

import XCTest
@testable import snakesLadders

// US 3
final class MovesByDiceRolls: XCTestCase {
  
  // UAT1
  func testPlayerRollTheDie() throws {
    let game = SnakesLadders()
    for _ in 1...100 {
      let dieResult = game.dice.roll()
      XCTAssertGreaterThanOrEqual(dieResult, 1, "the die result should be greater than or equal to 1")
      XCTAssertLessThanOrEqual(dieResult, 6, "the die result should be less than or equal to 6")
    }
  }
}
