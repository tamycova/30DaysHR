// number of elements
var n = Int(readLine()!)!

for _ in 1...n{
    var number = Int(readLine()!)!
    var binaryArray = Array<Int>()
    while number != 0 {
        binaryArray.insert(number%2, atIndex:0)
        number = number/2
    }
    print(binaryArray.map(String.init).joinWithSeparator(""))
}
