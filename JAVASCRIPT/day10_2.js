function processData(input) {
    //Enter your code here

    input = input.split('\n');
    if (input < 1 || input > 1000) {
        return;
    }

    for (var i = 0; i < input.length-1; i++) {
        var num = Number(input[i+1]);
        if (num < 1 || num > 1e21) {
            return;
        }

        var binary = "";
        do {
            var rem = num % 2;
            binary += rem.toString();
            num = parseInt(num/2);
        }
        while (num !== 0);

        console.log(binary.split('').reverse().join(''));
    }
}