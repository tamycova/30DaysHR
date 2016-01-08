
import Foundation
let numberOfEntries = Int(readLine()!)!
var phoneBook = [String:String]()

// 
for _ in 1 ... numberOfEntries {
  let (name, number) = (readLine()!, readLine()!)
    phoneBook[name] = number
}

var possibleKey = readLine()
while possibleKey != nil {

  if let key = possibleKey {
    if let foundKeyValue = phoneBook[key] {
      print("\(key)=\(phoneBook[key]!)")
    } else {
      print("Not found")
    }
  }
  possibleKey = readLine()
}
