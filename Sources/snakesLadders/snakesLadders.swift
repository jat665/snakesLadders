@main
public struct SnakesLadders {
  let token1 = Token()
  let dice = Die()
  
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

class Die {
  private static let start = 1
  private static let end = 6
  
  func roll() -> Int {
    return Int.random(in: Die.start...Die.end)
  }
}

class Board {
  static let initialPosition = 1
  static let finalPosition = 100
}
