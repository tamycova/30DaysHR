import Foundation

var matrix = [[Int]]()
for _ in 0..<6 {
    matrix.append(readLine()!.characters.split(" ").map(String.init).map{Int($0)!})
}

var result = Int.min
for i in 1..<5 {
    for j in 1..<5 {
        // Swift wants me to split expression because "it's too complex"
        var partial = matrix[i-1][j-1] + matrix[i+1][j-1]    // first row first element and last row first element
        partial += matrix[i-1][j] + matrix[i+1][j]    // first row second element and last row second element
        partial += matrix[i-1][j+1] + matrix[i+1][j+1]    // first row third element and last row third element
        partial += matrix[i][j]    // middle element
        if partial > result {
            result = partial
        }
    }
}

print(result)
