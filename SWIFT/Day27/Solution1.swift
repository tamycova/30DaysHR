let _ = readLine()
while let threshold = (readLine()?.characters.split(" ").map(String.init).map{ Int($0)! }) {
    var count = readLine()!.characters.split(" ").map(String.init).map{ Int($0)! }.filter{ $0<=0 }.count
    if count >= threshold[1] {
        print("NO")
    }else {
        print("YES")
    }
}
