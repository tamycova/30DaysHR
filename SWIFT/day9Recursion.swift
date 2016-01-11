import Foundation


func min(x x: Int, y: Int) -> Int {
  var outcome = x
  
  if y <= x {
    outcome = y
  }
  return outcome
}

func max(x x: Int, y: Int) -> Int {
  var outcome = x
  
  if y >= x {
    outcome = y
  }
  
  return outcome
}
func gcd(x x: Int, y: Int) -> Int {
  if x == y {
    return x
  } else {// if x > y {
    return gcd(x: max(x: x, y: y) - min(x: x, y: y), y: min(x: x, y: y))
  }
}

let aI = readLine()!.characters.split(" ").map { Int(String($0))! }
print(gcd(x: aI[0], y: aI[1]))

