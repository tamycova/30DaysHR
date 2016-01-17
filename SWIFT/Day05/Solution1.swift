// Created By Ashok

import Foundation

// striping new line character is the
// default behavior of readLine
let numberOfSeries = Int(readLine()!)! 

for _ in 0..<numberOfSeries{

    var line = readLine()!

    // Create an Int array on the fly using map
    var lineArray = line.characters.split(" ").map { Int(String($0))! }
    
    let (aVar, bVar, NVar) = (lineArray[0], lineArray[1], lineArray[2])
    
    var sum = 0
    
    for firstLoop in 0..<NVar{
        sum = 0
        for secondLoop in 0...firstLoop{
            sum += Int(pow(Double(2), Double(secondLoop)))
        }
        var total = aVar + (sum*bVar)
        print("\(total)", terminator: " ")
    }
    print("")
}
