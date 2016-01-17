import Foundation

// Class Difference
class Difference {

  // MARK: Private Instance variables
  private var elements = [Int]()

  // MARK: Public Instance variables
  var maximumDifference : Int!

  // MARK: Initializer(s)
  init(a: [Int]) {
    elements = a 
    maximumDifference = 0
  }

  // MARK: Instance methods
  func computeDifference() {
    var nIntegers = elements

    while (nIntegers.count != 0) {
      let firstInt = nIntegers.removeFirst()
      for theOtherInt in nIntegers {
        let difference = abs(firstInt - theOtherInt)
        if difference > maximumDifference {
          maximumDifference = difference
        }
      }
    }
  }
}

// MARK: Main

let n = Int(readLine()!)!
let a = readLine()!.characters.split(" ").map { Int(String($0))! }

let d = Difference(a: a)
d.computeDifference()

print(d.maximumDifference, terminator: "")

