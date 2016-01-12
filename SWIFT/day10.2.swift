// number of elements
var n = Int(readLine()!)!

for _ in 1...n{
    var number = Int(readLine()!)!
    var binaryArray = Array<Int>()
    while number != 0 {
        binaryArray.append(number%2)
        number = number/2
    }
    // Method 1 : small code but takes a bit processing power than other method
    print(binaryArray.reverse().map(String.init).joinWithSeparator(""))
    
    // Method 2 : less weight on processor
    //binaryArray.reverse().forEach{
    //    print("\($0)", terminator: "")
    //}
    //print("")
}
