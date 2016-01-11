import Foundation

var matrix: [[Int]] = [[]]
for i in 0..<6 {
    let line: [String] = readLine()!.characters.split { $0 == " "}.map(String.init)
    matrix.append([]) // Create row
    for elem in line {
        matrix[i].append(Int(elem)!)
    }   
}

var result = Int.min
for i in 1..<5 {
    for j in 1..<5 {
        // Swift wants me to split expression because "it's too complex"
        var partial: Int = matrix[i][j]+matrix[i-1][j-1]
        partial += matrix[i-1][j]+matrix[i-1][j+1]
        partial += matrix[i+1][j-1]+matrix[i+1][j]
        partial += matrix[i+1][j+1]
        if partial > result {
            result = partial
        }
    }
}

print(result)
