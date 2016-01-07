// Enter your code here 
let M: Double = Double(readLine()!)!
let T: Double = Double(readLine()!)!/100
let X: Double = Double(readLine()!)!/100

let total = M*(1+T+X)
print("The final price of the meal is $\(Int(total)).")
