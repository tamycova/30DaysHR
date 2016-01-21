object Solution {
    def main(args: Array[String]) {
            val words = readLine.split(Array(',',' ', '\'','+','?','!','.','\\','_','@','[',']')).filter(_!="")
            println(words.size)
            words.foreach(println)
    }
}
