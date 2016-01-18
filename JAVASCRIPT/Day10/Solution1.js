function processData(input) {
  var data = input.split(/\r?\n/);
  var cases = parseInt(data[0]);
  for (var i = 1; i <= cases; i++) {
    var num = parseInt(data[i]);
    // Find the highest power of 2 that gives a number smaller than num
    var highestPower = Math.floor(Math.log2(num));
    var string = '1';
    // Add zeros to the string to create binary representation
    for (var j = 1; j <= highestPower; j++) {
      string += '0';
    }
    var start = num - Math.pow(2, highestPower);
    while (start >= 1) {
      //If start is 1 add 1 at the end of the string.
      if (start === 1) {
        string = string.substring(0, highestPower) + '1';
        start = 0;
      } else {
        // Find the highest power of 2 that gives a number dmaller than start
        var newhigh = Math.floor(Math.log2(start));
        // Postion to place 1 in the string
        var replaceAt = highestPower - newhigh;
        // Replace the 0 at the position with 1.
        string = string.substring(0, replaceAt) + '1' + string.substring(replaceAt + 1);
        start = start - Math.pow(2, newhigh);
      }
    }
    console.log(string);
  }
}
