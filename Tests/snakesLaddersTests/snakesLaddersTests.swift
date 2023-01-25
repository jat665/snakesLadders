import XCTest
@testable import snakesLadders

// US 1
final class tokenCanMoveAcrossTheBoardTests: XCTestCase {
  
  // UAT1
  func testGameIsStarted() throws {
    let game = SnakesLadders()
    XCTAssertEqual(game.token1.position, 1, "Token should be on square 1")
  }
  
  // UAT2
  func testMoveToken3Spaces() throws {
    let game = SnakesLadders()
    XCTAssertEqual(game.token1.position, 1, "Token should be on square 1")
    game.token1.move(spaces: 3)
    XCTAssertEqual(game.token1.position, 4, "Token should be on square 4")
  }
}
