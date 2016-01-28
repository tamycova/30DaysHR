object Solution {
    def main(args: Array[String]) {
            val Array(aD, aM, aY) = readLine.split(" ").map(_.toInt)
            val Array(eD, eM, eY) = readLine.split(" ").map(_.toInt)

            if(aY<=eY) {
                if (aM<=eM) {
                    val res = 15*(aD-eD)
                    println(if(res<0) 0 else res)
                } else {
                    println(500*(aM-eM))
                }
            } else {
                println(10000)
            }
    }
}
