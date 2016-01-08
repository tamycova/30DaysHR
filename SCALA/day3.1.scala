object Solution {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    var n = sc.nextInt()

    if (n%2==1) println("Weird")
    else {
      if (n >= 2 && n <= 5) println("Not Weird")
      if (n >= 6 && n <= 20) println("Weird")
      if (n > 20) println("Not Weird")
    }
  }
}