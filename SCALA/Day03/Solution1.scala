object Solution {
    def main(args: Array[String]) {
        val n = readInt
        if (n%2!=0) println("Weird")
        else {
            if(n>=2 && n<=5) println("Not Weird")
            else if (n>=6 && n<=20) println("Weird")
            else println("Not Weird")
        }
    }
}
