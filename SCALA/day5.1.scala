import scala.math.pow

object Solution {
  def main(args: Array[String]) {
    /* Enter your code here. Read input from STDID. Print output to STDOUT.
    Your class should be named Solution */
    val sc = new java.util.Scanner(System.in)
    val T = sc.nextInt()

    for (i <- 1 to T) {
      var (a, b, n) = (sc.nextInt(), sc.nextInt(), sc.nextInt())
      var term = a
      for (j <- 0 to n-1) {
        term += pow(2,j).toInt * b
        print(term + " ")
      }
      println("")
    }
  }
}