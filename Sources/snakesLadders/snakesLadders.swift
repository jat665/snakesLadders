@main
public struct SnakesLadders {
  let token1 = Token()

  public static func main() {}
}

class Token {
  var position = Board.initialPosition
  
  @discardableResult
  func move(spaces: Int) -> Bool {
    position += spaces
    return position == Board.finalPosition
  }

  func move(toPosition position: Int) {
    self.position = position
  }
}

class Board {
  static let initialPosition = 1
  static let finalPosition = 100
}
