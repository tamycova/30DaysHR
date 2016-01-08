let N = Int(readLine()!)!

if N%2 == 0 && (N > 20 || 2...5 ~= N) {
    print("Not ", terminator: "")
}
print("Weird")
