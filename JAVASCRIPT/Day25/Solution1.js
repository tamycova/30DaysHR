function processData(input) {
    function checkPrime(num){
        if (num == 1)
            return false;
        for (var i=2; i<Math.sqrt(num); i++){
            if (num%i == 0)
                return false;
        }
        return true;
    }
    
    input = input.split('\n');
    for (var i=1; i<=parseInt(input[0]); i++){
        if (checkPrime(parseInt(input[i])))
            console.log('Prime');
        else
            console.log('Not prime');
    }
} 