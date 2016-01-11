// number of elements
var n = Int(readLine()!)!

// read array
var arr = readLine()!.characters.split(" ").map(String.init).map{Int($0)!}

// iterate over the array in reverse order and print the elements separated by space
for i in (0...n-1).reverse(){
    print(arr[i], terminator: " ")
}
