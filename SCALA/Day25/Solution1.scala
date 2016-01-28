object Solution {
    def main(args: Array[String]) {
        for (_ <- 0 until readInt) {
            println(if (isPrime(readInt)) "Prime" else "Not prime")
        }
    }
    def isPrime(n:Int): Boolean = {
        if (n <= 1) return false
        val root = math.sqrt(n).toInt
        for (i <- 2 until root) {
            if (n%i==0) return false
        }
        true
    }
}
