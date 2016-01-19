//Write your code here
class Calculator : AdvancedArithmetic {
    public int divisorSum(int n) {
        int result = n;
        for (int i = 1; i <= n/2; i++) {
            if(n%i==0) result += i;
        }
        return result;
    }
}
