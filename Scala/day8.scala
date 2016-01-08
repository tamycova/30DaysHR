object Solution {
    def main(args: Array[String]) {
        var phoneBook:Map[String, Int] = Map()
        for (_ <- 1 to readInt) {
           phoneBook += (readLine-> readInt)
        }
        var read = true
        while (read) {
            val name = readLine
            read = name != null
            if(read)
            println(if(phoneBook.contains(name)) s"$name="+phoneBook(name) else "Not found")
        }
    }
}
