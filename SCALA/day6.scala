object Solution {
    def main(args: Array[String]) {
        val N = readInt
        for (i <- 1 to N) println(Array.fill[String](N-i)(" ").mkString + Array.fill[String](i)("#").mkString)
    }
}
