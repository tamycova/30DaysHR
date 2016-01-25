function Calculator(){}
Calculator.prototype.power = function(n, p){
    if (n<0 || p<0){
        //throw new Error('n and p should be non-negative');
        return('n and p should be non-negative');
    }
    else{
        return Math.pow(n,p);
    }
}