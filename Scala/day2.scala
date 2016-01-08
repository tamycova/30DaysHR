object Solution {

    def main(args: Array[String]) {
            val M = readDouble
            val tip = ((readInt*M)/100).toDouble
            val tax = ((readInt*M)/100).toDouble
            val finalPrice = math.round(M + tip + tax)
            println(s"The final price of the meal is $$$finalPrice.")
    }
}
