let n = Int(readLine()!)!

var addressBook: [String: String] = [:]

for _ in 0..<n {
    let name = readLine()!
    let phone = readLine()!
    
    addressBook[name] = phone
}

while let line = readLine() {
    if let num = addressBook[line] {
        print("\(line)=\(num)")
    } else {
        print("Not found")
    }
}
