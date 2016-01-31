object Solution {
    def main(args: Array[String]) {
        for (_ <- 0 until readInt) {
            println(if(isFunny(readLine)) "Funny" else "Not Funny")
        }
    }
    def isFunny(str: String): Boolean = {
        val length = str.length-1
        for (i <- 0 until length/2) {
            if(math.abs(str(i).toInt-str(i+1).toInt)!=math.abs(str(length-i).toInt-str(length-(i+1)).toInt)) return false
        }
        true
    }
}
