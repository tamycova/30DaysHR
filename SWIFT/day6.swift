/*
 * Create a Python-like char repeating operator
 */
func *(c: Character, n: Int) -> String {
    return String(count: n, repeatedValue: c)
} 
 
var n = Int(readLine()!)!

for i in 1...n {
    print(" "*(n-i)+"#"*(i))
}
