//
//  day5Loops.swift
//
//  Created by Samuel A WINFUL on 1/1/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//  
import Foundation

func parseInts(line: String) -> [Int] {
  var string   = line
  var integers = [Int]()
  
  while string.containsString(" ") {
    let spaceIndex = string.rangeOfString(" ")
    let firstInt   = string[string.startIndex..<(spaceIndex?.startIndex)!]
    string         = string[(spaceIndex?.endIndex)!..<string.endIndex]
    integers.append(Int(firstInt)!)
  }
  
  if !string.isEmpty {
    integers.append(Int(string)!)
  }
  return integers
}

func myPow(base: Int, exponent: Int) -> Int {
  var sum = 1
  for _ in 0..<exponent {
    sum *= base
  }
  return sum
}

func day5Series(a a: Int, b: Int, N: Int) {
  var sum = a
  for (var i=N; i > 0; i--) {
    sum += ( myPow(2, exponent: (N-i)) * b)
    print("\(sum) ", terminator: "")
  }
  print("")
}

let lines = Int(readLine()!)!
for _ in 0..<lines {
  let nextLineOfInts = parseInts(readLine()!)
  day5Series(a: nextLineOfInts[0], b: nextLineOfInts[1], N: nextLineOfInts[2])
}
