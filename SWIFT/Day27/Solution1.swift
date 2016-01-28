let k = [[4, 3],[5, 2],[6, 4],[7, 5],[8, 3]]
let timings = [[0, -1, 2, 3], [2, 1, 0, -1, -2], [-1, 0, 2, 4, 5, 6], [-1, 0, -1, -2, -3, 4, 5], [0, -1, 2, 3, 4, 5, 6, 7]]

//for i in 0...4 {
//    let threshold = k[i]
//    var count = timings[i].filter{ $0<=0 }.count
//    if count >= threshold[1] {
//        print("NO")
//    }else {
//        print("YES")
//    }
//}

print(5)
for j in 0...4 {
    print( k[j].map(String.init).joinWithSeparator(" ") )
    print( timings[j].map(String.init).joinWithSeparator(" ") )
}
