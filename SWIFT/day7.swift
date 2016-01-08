// number of elements
var n = Int(readLine()!)!

// read array
var arr = readLine()!.characters.split(" ").map(String.init)

// iterate over the array in reverse order and print the elements separated by space
for (var i = n - 1; i >= 0; i--) {
    print(arr[i], terminator: " ")
}
