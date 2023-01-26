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
  func testPlayerRollTheDice() throws {
    let dice = Dice()
    for _ in 1...100 {
      let diceResult = dice.roll()
      XCTAssertGreaterThanOrEqual(diceResult, 1, "dice result should be greater than or equal to 1")
      XCTAssertLessThanOrEqual(diceResult, 6, "dice result should be less than or equal to 6")
    }
  }
  
  // UAT2
  func testPlayerMoveTokenDiceResult() throws {
    let game = SnakesLadders(dice: FakeDice(result: 4))
    XCTAssertEqual(game.token1.position, 1, "Token should be on square 1")
    game.rollTheDice()
    XCTAssertEqual(game.token1.position, 5, "Token should be on square 5")

  }
}

class FakeDice: Dice {
  let result: Int
  
  init(result: Int) {
    self.result = result
  }
  
  override func roll() -> Int {
    return result
  }
}
