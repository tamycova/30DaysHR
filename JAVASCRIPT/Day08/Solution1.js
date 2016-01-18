function processData(input) {
    //Enter your code here
    input = input.split('\n');
    var entries = input[0];
    var i;
    var phonebook = {};
    var count = 1;
    for (i = 1; i <= Number(entries) * 2; i+=2) {
        if (/\d/.test(input[i]) || input[i+1][0] == '0' || input[i+1][0].length > 8) {
            continue;
        }
        
        phonebook[input[i]] = input[i+1];
    }
    
    for (i; i < input.length; i++) {
        if (phonebook[input[i]]) {
            console.log(input[i] + '=' + phonebook[input[i]]);
            continue;
        }
        console.log('Not found');
    }
} 
