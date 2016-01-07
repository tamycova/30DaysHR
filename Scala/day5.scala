object Solution {
    def main(args: Array[String]) {
        for (_ <- 0 until readInt)
        {
           val arr = readLine.split(' ').map(_.toInt)
           for (i <- 0 until arr(2)) {
              var num = arr(0)
              for (j <- 0 to i) {
                   num += ((Math.pow(2,j)).toInt*arr(1))
                    }
                print(num+" ")
                if(arr(2)-i==1)println
            }
        }
    }
}
