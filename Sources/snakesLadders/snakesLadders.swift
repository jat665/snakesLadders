@main
public struct SnakesLadders {
  let token1 = Token()
  let dice: Dice
  
  init(dice: Dice = Dice()) {
    self.dice = dice
  }
  
  func rollTheDice() {
    token1.move(spaces: dice.roll())
  }

  public static func main() {
    let game = SnakesLadders()
    print("game started")
    print("token 1 - initial position: \(game.token1.position)")
    while (!game.token1.isWinner()) {
      print("==============================")
      game.rollTheDice()
    }
    print("token 1 - winner")
    print("")
  }
}

class Token {
  var position = Board.initialPosition
      
  @discardableResult
  func move(spaces: Int) -> Bool {
    if (!isMovementAllowed(spaces: spaces)) {
      print("token 1 - current position: \(position)")
      return false
    }
    position += spaces
    print("token 1 - current position: \(position)")
    return isWinner()
  }

  func move(toPosition position: Int) {
    self.position = position
  }
  
  func isMovementAllowed(spaces: Int) -> Bool {
    return (position + spaces) <= Board.finalPosition
  }
  
  func isWinner() -> Bool {
    return position == Board.finalPosition
  }
}

class Dice {
  private static let start = 1
  private static let end = 6
  
  func roll() -> Int {
    let result = Int.random(in: Dice.start...Dice.end)
    print("token 1 - roll dice: \(result)")
    return result
  }
}

class Board {
  static let initialPosition = 1
  static let finalPosition = 100
}
