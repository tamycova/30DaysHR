import Foundation

// Class Difference
class Difference {

  // MARK: Private Instance variables
  private var elements = [Int]()
  private var minimumPairs      = [Int]()
  private var minimumDifference = 0
    
  // MARK: Initializer(s)
  init?(a: [Int]) { // Fail if we don't have atleast two
    if a.count > 1 {
      elements = a
      minimumDifference = abs(a[0]-a[1])
    }
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
        minimumPairs      = [Int]() 
        minimumPairs.append(elements[i-1])
        minimumPairs.append(elements[i])
      }
    }
  }

  // Print out the pairs
  func printPairs() {
    minimumPairs.forEach { element in
      print("\(element)", terminator: " ")
    }
  }
}

// MARK: Main
let n = Int(readLine()!)!
let a = readLine()!.characters.split(" ").map {Int(String($0))!}.sort()

if let d = Difference(a: a) {
  d.computeMinimumDifference()
  d.printPairs()
}

