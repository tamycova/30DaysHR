object Solution {
    def main(args: Array[String]) {
       val size = readInt
       val n = readLine.split(" ").map(_.toInt).sorted
       var curr = Int.MaxValue
       val sb = StringBuilder.newBuilder

       for (i <- 0 until size-1) {
           var diff = math.abs(n(i)-n(i+1))
           if (diff < curr) {
                curr = diff
                sb.setLength(0)
                sb.append(n(i) + " " + n(i+1) + " ")

            } else if (curr==diff) {
               sb.append(n(i) + " " + n(i+1) + " ")
            }
       }
        println(sb.toString)
    }
}
