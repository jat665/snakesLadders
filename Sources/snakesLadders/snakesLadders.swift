@main
public struct SnakesLadders {
  let token1 = Token()

  public static func main() {}
}

class Token {
  var position = Board.initialPosition
}

class Board {
  static let initialPosition = 1
}
