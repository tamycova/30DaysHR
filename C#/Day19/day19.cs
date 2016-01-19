class Calculator : AdvancedArithmetic
{
    public int divisorSum(int n)
    {
        int ret = 0;
        for (int i = 1; i <= n / 2; i++)
        {
            if (n % i == 0)
                ret += i;
        }
        return ret + n;
    }
}
