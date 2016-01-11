
var noOfContacts = Int(readLine()!)!
var phoneBook:[String:Int]=[:]

for _ in 0..<noOfContacts{
phoneBook[readLine()!] = Int(readLine()!)!
}

while let key = readLine() {
  if let foundKeyValue = phoneBook[key] {
      print("\(key)=\(phoneBook[key]!)")
    } else {
      print("Not found")
  }
}
