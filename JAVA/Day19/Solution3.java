final class Calculator implements AdvancedArithmetic {
    public int divisorSum(int n) {
        int sum = 0;
        
        /* Calculate Sum */
        for(int i = 1; i <= Math.sqrt(n); i++) {
            if(n%i == 0) {
                sum += i;
                if(i*i != n)
                    sum += n/i;
            }
        }
            
        /* Return Sum */
        return sum;
    }
}
