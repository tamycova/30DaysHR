
import Foundation
let numberOfEntries = Int(readLine()!)!
var phoneBook = [String:String]()

// 
for _ in 1 ... numberOfEntries {
  let (name, number) = (readLine()!, readLine()!)
    phoneBook[name] = number
}

while let key = readLine() {
  if let foundKeyValue = phoneBook[key] {
      print("\(key)=\(phoneBook[key]!)")
    } else {
      print("Not found")
  }
}
