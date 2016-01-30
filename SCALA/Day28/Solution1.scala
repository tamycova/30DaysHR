import scala.util.matching.Regex
object Solution {
    def main(args: Array[String]) {
       for (_ <- 0 until readInt) {
           try {
               val pattern = new Regex(readLine)
               println("Valid")
           } catch {
               case e: Throwable => println("Invalid")
           }
       }
    }
}
