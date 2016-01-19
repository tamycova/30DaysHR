class Calculator {
    @throws(classOf[Exception])
    def power(n: Int, p: Int): Int = {
        if (n < 0 || p < 0) throw new Exception("n and p should be non-negative")
        math.pow(n,p).toInt
    }
}
