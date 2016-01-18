// defining new operator
infix operator ==> {}

// defining operator function
func ==>(c: Character, n: Int) -> String {
    return String(count: n, repeatedValue: c)
}

var n = Int(readLine()!)!

for i in 1...n {
    // using defined operator to simply work
    print((" "==>(n-i)) + ("#"==>(i)))
}
