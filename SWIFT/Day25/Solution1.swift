import Foundation

var _ = readLine()

func isPrime (n: Int)->Bool {
    //check if n is a multiple of 2 and not equals 2
    //1 is not prime and 2 is prime
    if n == 1 || (n != 2 && n%2 == 0) { return false }
    //if not, then just check the odds
    //and checking till root is enough since from then the factors repeat
    for var i = 3; i*i<=n; i+=2 {
        if n%i == 0 { return false }
    }
    return true
}

while let k = readLine(){
    var number = Int(k)!
    if isPrime(number) {
        print("Prime")
    } else {
        print("Not prime")
    }
}
