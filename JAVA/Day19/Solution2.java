class Calculator implements AdvancedArithmetic{
  public   int divisorSum(int n){
        int i,sum=0;
        for(i=1;i<=n;i++)
            {
            if(n%i==0)sum=sum+i;
        }
    return sum;
    }
    
}
