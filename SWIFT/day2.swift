// Created by Ashok Varma
import Foundation

let originalPrice : Double = Double(readLine(stripNewline: true)!)!
let interestPercent : Int = Int(readLine(stripNewline: true)!)!
let tipPercent : Int = Int(readLine(stripNewline: true)!)!

let tax : Double = (Double(interestPercent) * originalPrice)/100
let tip : Double = (Double(tipPercent) * originalPrice)/100

var finalPrice : Double = originalPrice + tax + tip
let finalPriceInt = Int(round(finalPrice))

print("The final price of the meal is $\(finalPriceInt).")
