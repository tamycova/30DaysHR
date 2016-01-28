function processData(input) {
    input = input.split('\n');
    var actual = input[0].split(' ');
    var expected = input[1].split(' ');
    if ((y = parseInt(actual[2]-expected[2]))>0)
        console.log(10000);
    else if ((m = parseInt(actual[1]-expected[1]))>0)
             console.log(m*500);
    else if ((d = parseInt(actual[0]-expected[0]))>0)
             console.log(d*15);
    else
        console.log(0);
} 