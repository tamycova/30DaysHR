object Solution {
  def main(args: Array[String]) {
    val sc = new java.util.Scanner(System.in)
    var M = sc.nextDouble(); // original meal price
    var T = sc.nextInt(); // tip percentage
    var X = sc.nextInt(); // tax percentage

    // Enter your code here!
    // Run some computations....
    var total = (M + ((M * T) / 100) + ((M * X) / 100)).toInt
    println("The final price of the meal is $" + total + ".")
  }
}