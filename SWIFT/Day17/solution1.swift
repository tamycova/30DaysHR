
import Foundation

enum RangeError : ErrorType {
  case NotInRange(String)
}

class Calculator {

  // MARK: Instance Methods
  /// Throws an exception if either n or p are negative.
  func power(base n: Int, power p: Int) throws -> Int {

    guard n > -1 && p > -1 else {
      let message = "n and p should be non-negative"
      throw RangeError.NotInRange(message)
    }

    let outcome = Int( pow( Double(n), Double(p) ) )
    return outcome
  }
}

// MARK: Main
var t = Int(readLine()!)!
let c = Calculator()

while ( t-- > 0) {
  let line = readLine()!.characters.split(" ").map { Int(String($0))! } 

  do {
    let ans = try c.power(base: line[0], power: line[1])
    print(ans)
  } catch RangeError.NotInRange(let errorMsg) {
    print(errorMsg)
  }
}

