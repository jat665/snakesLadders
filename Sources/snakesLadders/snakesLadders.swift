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

  public static func main() {}
}

class Token {
  var position = Board.initialPosition
      
  @discardableResult
  func move(spaces: Int) -> Bool {
    if ((position + spaces) > Board.finalPosition) {
      return false
    }
    position += spaces
    return position == Board.finalPosition
  }

  func move(toPosition position: Int) {
    self.position = position
  }
}

class Dice {
  private static let start = 1
  private static let end = 6
  
  func roll() -> Int {
    return Int.random(in: Dice.start...Dice.end)
  }
}

class Board {
  static let initialPosition = 1
  static let finalPosition = 100
}
