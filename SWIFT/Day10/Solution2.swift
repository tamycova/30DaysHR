
import Foundation

func dividendToBinary(dividend: Int) -> String {
  var binaryString = ""
  let divisor = 2
  var dividendCopy = dividend

  repeat {
    if dividendCopy % divisor == 1 {
      binaryString.insert("1", atIndex: binaryString.startIndex)
    } else {
      binaryString.insert("0", atIndex: binaryString.startIndex)
    }
    dividendCopy /= 2
  } while dividendCopy != 0
  return(binaryString)
}

var testCases = Int(readLine()!)!

repeat {
  let dividend = Int(readLine()!)!
  print(dividendToBinary(dividend))
} while --testCases > 0

