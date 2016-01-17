object Solution {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    var n = sc.nextInt()

    var i, k = 1
    while (n > 0) {
      for (i <- n-1 to 1 by -1) print(" ")
      for (i <- 0 to k-1) print("#")
      println("")
      k += 1
      n -= 1
    }
  }
}