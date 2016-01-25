function processData(input) {
    input = input.split(/[ !\[,?.\\_'@+\]]/).filter(function(ch){return ch;});
    console.log(input.length);
    console.log(input.join('\n'));
} 