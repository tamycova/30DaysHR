object Solution {
    def main(args: Array[String]) {
        for (_ <- 0 until readInt)
        {
            val arr = readLine.split(' ').toList.map(_.toInt)
            var num = arr(0)
                for (i <- 0 until arr(2)) {
                    num += ((Math.pow(2,i)).toInt*arr(1))
                    print(num+" ")
                    if(arr(2)-i==1)println
            }
        }
    }
}

