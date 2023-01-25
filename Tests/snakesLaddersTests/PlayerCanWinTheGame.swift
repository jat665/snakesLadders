//
//  PlayerCanWinTheGame.swift
//  
//
//  Created by Jorge Arindia on 25/1/23.
//

import XCTest
@testable import snakesLadders

// US 2
final class PlayerCanWinTheGame: XCTestCase {
  
  // UAT1
  func testPlayerHasWonTheGame() throws {
    let game = SnakesLadders()
    game.token1.move(toPosition: 97)
    XCTAssertEqual(game.token1.position, 97, "Token should be on square 97")
    let isWinner = game.token1.move(spaces: 3)
    XCTAssertEqual(game.token1.position, 100, "Token should be on square 100")
    XCTAssertTrue(isWinner, "Player1 should won the game")
  }
}
