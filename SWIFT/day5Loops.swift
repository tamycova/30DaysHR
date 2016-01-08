// Created By Ashok

import Foundation

let numberOfSeries = Int(readLine(stripNewline: true)!)!

for _ in 0..<numberOfSeries{

    var line = readLine(stripNewline: true)!
    var lineArray = line.characters.split(" ").map(String.init)
    
    var aVar : Int = Int(lineArray[0])!;
    var bVar : Int = Int(lineArray[1])!;
    var NVar : Int = Int(lineArray[2])!;
    
    var sum : Int = 0
    
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
