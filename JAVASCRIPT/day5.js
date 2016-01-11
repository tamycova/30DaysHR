function processData(input) {
    //Enter your code here
    var data = input.split('\n');
    var i;

    for (i = 0; i < Number(data[0]); i++) {
        var input = data[i + 1].split(' ');
        var a = Number(input[0]);
        var b = Number(input[1]);
        var N = Number(input[2]);
        var initial = a + Math.pow(2,0) * b;
        var series = [initial];

        for (var j = 1; j < N; j++) {
            initial += Math.pow(2,j) * b;
            series.push(initial);
        }

        console.log(series.join(' '));
    }
}