import Foundation

let sentence   = readLine()!
let delimiters = "! [ , ? . \\ _ ' @ + ]"

// This one is a mouth full! We could break the lines ;)
let sArray = sentence.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: delimiters)).filter { $0 != "" }

print(sArray.count)
sArray.forEach{print($0)}
