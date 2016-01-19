class Calculator : AdvancedArithmetic
{
    public int divisorSum(int n)
    {
        int ret = n;
        for (int i = 1; i <= n / 2; i++)
        {
            if (n % i == 0)
                ret += i;
        }
        return ret;
    }
}
