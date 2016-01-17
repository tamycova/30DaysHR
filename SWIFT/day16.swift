import Foundation

// Class Difference
class Difference {

  // MARK: Private Instance variables
  private var elements          = [Int]()
  private var minimumPairs      = [Int]()
  private var minimumDifference = Int.max
    
  // MARK: Initializer(s)
  init(a: [Int]) {
    elements = a
  }

  // Check & store pairs with the [same] least difference
  func computeMinimumDifference() {

    for (var i = 1; i < elements.count; ++i) {
      let difference = abs(elements[i-1] - elements[i])
      if difference == minimumDifference {
        minimumPairs.append(elements[i-1])
        minimumPairs.append(elements[i])
      }

      if difference < minimumDifference {
        minimumDifference = difference
        minimumPairs      = []
        minimumPairs.append(elements[i-1])
        minimumPairs.append(elements[i])
      }
    }
  }

  // Print out the pairs
  func printPairs() {
    minimumPairs.forEach { print("\($0)", terminator: " ") }
  }
}

// MARK: Main
let n = Int(readLine()!)!
let a = readLine()!.characters.split(" ").map {Int(String($0))!}.sort()

let d = Difference(a: a)
d.computeMinimumDifference()
d.printPairs()

